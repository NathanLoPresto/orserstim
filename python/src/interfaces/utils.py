"""Module containing general functions useful to interfaces.

June 2022

Lucas Koerner, koer2434@stthomas.edu
Abe Stroschein, ajstroschein@stthomas.edu
"""

import numpy as np
from scipy.fft import rfft
import datetime
import sys
import yaml
import os

home_dir = os.path.join(os.path.expanduser('~'), '.packagename')


def create_yaml(overwrite=False):
    """Create a default config.yaml file."""
    
    default_configs = {
        'endpoint_max_width': 32,
        'fpga_bitfile_path': None,
        'ep_defines_path': None,
        'registers_path': None,
        'frontpanel_path': 'C:/Program Files/Opal Kelly/FrontPanelUSB',
    }

    if not os.path.exists(home_dir):
        os.mkdir(home_dir)

    file_path = os.path.join(home_dir, 'config.yaml')

    if os.path.exists(file_path) and not overwrite:
        print('File already exists, run "create_yaml(overwrite=True)" to overwrite the file.')
        return None

    with open(file_path, mode='w') as file:
        yaml.dump(default_configs, file)
    
    print(f'YAML created at {file_path}')
    return default_configs


def rev_lookup(dd, val):
    key = next(key for key, value in dd.items() if value == val)
    return key

def bin(s):
    return str(s) if s<=1 else bin(s>>1) + str(s&1)

def test_bit(int_type, offset):
    mask = 1 << offset
    return ((int_type & mask) >> offset)

def gen_mask(bit_pos):

    if not hasattr(bit_pos, '__iter__'):
        bit_pos = [bit_pos]

    mask = sum([(1 << b) for b in bit_pos])
    return mask

def twos_comp(val, bits):
    """compute the 2's complement of int value val
        handle an array (list or numpy)
    """

    def twos_comp_scalar(val, bits):
        if (val & (1 << (bits - 1))) != 0: # if sign bit is set e.g., 8bit: 128-255
            val = val - (1 << bits)        # compute negative value
        return val                         # return positive value as is

    if hasattr(val, "__len__"):
        tmp_arr = np.array([])
        for v in val:
            tmp_arr = np.append(tmp_arr, twos_comp_scalar(v,bits))
        return tmp_arr
    else:
        return twos_comp_scalar(val, bits)


def reverse_bits(number, bit_width=8):
    """Return an integer with the reversed bits of the input number."""

    reversed_number = 0
    for i in range(bit_width):
        reversed_number <<= 1
        reversed_number |= number & 0b1
        number >>= 1
    return reversed_number


def count_bytes(num):
    """Count the number of bytes in a number."""

    bytes = 0
    if (num == 0):  # if the number equals 0
        return 1
    while (num != 0):  # bit shift 8 bits (byte)
        num >>= 8
        bytes += 1
    return bytes


def int_to_list(integer, byteorder='little', num_bytes=None):
    """Convert an integer into a list of integers 1 byte long.

    Parameters
    ----------
    integer : int
        The integer to convert.
    byteorder : str
        Either 'little' for little Endian (LSB first) or 'big' for big Endian
        (MSB first).
    num_bytes : int
        The number of bytes to convert the number into. None means the
        function will return the minimum number of bytes necessary to
        represent the number.
    """

    list_int = []

    while integer != 0:
        # Take the least significant byte and append it to the list, then shift the integer right 1 byte.
        byte = integer % 2**(8)
        list_int.append(byte)
        integer >>= 8

    # In case integer began at 0.
    if len(list_int) == 0:
        list_int.append(0)

    if num_bytes is not None:
        # User entered a number of bytes
        # Check if the integer fits into the given number of bytes
        if num_bytes < len(list_int):
            return False
        else:
            # Fill the list with 0 for remaining bytes
            for i in range(num_bytes - len(list_int)):
                # Can append to the end because the list will be reversed in the return
                list_int.append(0)

    if byteorder == 'little':
        return list_int
    elif byteorder == 'big':
        return list_int[::-1]
    else:
        print(f'Unknown byteorder "{byteorder}", using "little" instead')
        return list_int


def to_voltage(data, num_bits, voltage_range, use_twos_comp=False):
    """Convert the binary read data into a float voltage.

    We use the bit-width of the data and the voltage range of the channel
    to determine the voltage per bit. Then we multiply the binary data by
    that voltage for the total voltage.

    Arguments
    ---------
    data : int or list(int) or numpy.ndarray(numpy.uint16)
        The method will return the converted version of either.
    voltage_range : int
        The total voltage range used for the data.
    use_twos_comp : bool
        True if the given data is in two's complement form, False otherwise.

    Returns
    -------
    float or list : binary version of the voltage data in similar form data was given in
        int -> float
        list, numpy.ndarray -> list(float)
    """

    if type(data) is list:
        # If the data is given in a list, we can use our int version of
        # the method on every element in the list.
        return [to_voltage(data=x, num_bits=num_bits, voltage_range=voltage_range, use_twos_comp=use_twos_comp) for x in data]
    elif type(data) is np.ndarray:
        return [to_voltage(data=int(x), num_bits=num_bits, voltage_range=voltage_range, use_twos_comp=use_twos_comp) for x in data]
    elif type(data) is int or type(data) is np.uint16:
        # Determine the voltage represented by a single bit
        bit_voltage = voltage_range / (2 ** num_bits)
        if use_twos_comp:
            return twos_comp(val=data, bits=num_bits) * bit_voltage
        else:
            return data * bit_voltage
    else:
        print(f'ERROR: wrong data type in to_voltage: type(data) = {type(data)} Expected int or list(int) or numpy.ndarray(numpy.uint16)')
        return None


def from_voltage(voltage, num_bits, voltage_range, with_negatives=False):
    """Convert the float/int voltage into binary data.

    We use the bit-width and voltage range to determine the voltage per bit.
    Then we divide the voltage by the bit-voltage and round to an integer to
    find the binary data representation.

    Arguments
    ---------
    voltage : int or float or list(int or float) or numpy.ndarray(numpy.uint16)
        The method will return the converted version of either.
    voltage_range : int
        The total voltage range used for the voltage.
    with_negatives : bool
        True to convert the voltage with full negative at 0x0, zero at half
        scale, and full positive at full scale, False otherwise.

    Returns
    -------
    int or float or list : voltage version of the binary data in similar form voltage was given in
        int -> int
        float -> int
        list, numpy.ndarray -> list(int)
    """

    if type(voltage) is list:
        # If the voltage is given in a list, we can use our int version of
        # the method on every element in the list.
        return [from_voltage(voltage=x, num_bits=num_bits, voltage_range=voltage_range, with_negatives=with_negatives) for x in voltage]
    elif type(voltage) is np.ndarray:
        return [from_voltage(voltage=x, num_bits=num_bits, voltage_range=voltage_range, with_negatives=with_negatives) for x in [int(k) for k in list(voltage)]]
    elif type(voltage) is int or type(voltage) is float or type(voltage) is np.uint16:
        # Determine the voltage represented by a single bit
        if with_negatives:
            if voltage < -(voltage_range / 2):
                print(f'WARNING: Voltage {voltage} out of range [{-voltage_range / 2}-{voltage_range / 2}]. Truncating...')
                data = 0x0
            elif voltage > (voltage_range / 2):
                print(f'WARNING: Voltage {voltage} out of range [{-voltage_range / 2}, {voltage_range / 2}]. Truncating...')
                data = 2 ** num_bits - 1
            else:
                bit_voltage = voltage_range / (2 ** num_bits)
                data = round(voltage / bit_voltage)
                data = 2 ** (num_bits - 1) - 1 + data
        elif voltage < 0:
            print(f'WARNING: negative numbers not included in range [0, {voltage_range}]. Use with_negatives=True. Truncating...')
            data = 0x0
        elif voltage > voltage_range:
            print(f'WARNING: voltage {voltage} outside range [0, {voltage_range}]. Truncating...')
            data = 2 ** num_bits - 1
        elif voltage == voltage_range:
            data = 0xffff
        else:
            bit_voltage = voltage_range / (2 ** num_bits)
            data = int(voltage // bit_voltage)

        return data
    else:
        print(
            f'ERROR: wrong voltage type in from_voltage: type(voltage) = {type(voltage)} Expected int, float, list(int or float), or numpy.ndarray(numpy.uint16)')
        return None


def get_timestamp():
    return int((datetime.datetime.utcnow() - datetime.datetime(1970, 1, 1)).total_seconds() * 1000)


def calc_impedance(v_in, v_out, resistance):
    """Calculate the impedance of an unknown component.
    
    It is assumed the voltage source is connect in series with both the resistor and the unknown component.

    Arguments
    ---------
    v_in : list(int or float)
        The sinusoidal voltage source in the circuit.
    v_out : list(int or float)
        The output voltage across the unknown component.
    resistance : int or float
        The resistance of the resistor in the circuit in Ohms.

    Returns
    -------
    numpy.ndarray : the array of impedances calculated.
    """

    current = np.subtract(v_in, v_out) / resistance

    impedance_calc = np.divide(rfft(v_out), rfft(current))
    
    return impedance_calc

def get_memory_usage():
    """Get a sorted list of the objects and their sizes."""

    # These are the usual ipython objects, including this one you are creating
    ipython_vars = ['In', 'Out', 'exit', 'quit', 'get_ipython', 'ipython_vars']

    return sorted([(x, sys.getsizeof(globals().get(x))) for x in dir() if not x.startswith(
        '_') and x not in sys.modules and x not in ipython_vars], key=lambda x: x[1], reverse=True)

def create_filter_coefficients(fc, output_scale=0x2000, 
                        output_offset=0x0000, fs=5e6):
    from scipy.signal import butter, zpk2sos
    from numfi import numfi
    
    order = 4  # eventually order could be an input parameter however the code is 
    word_length = 32
    num_frac = 29
    den_frac = 30
    scale_frac = 31

    class Integer(int):
        ''' same as an int except prints as hex with 8 characters (32 bit wide)
            https://stackoverflow.com/questions/39095294/override-repr-or-pprint-for-int
        '''
        def __repr__(self):
            num_hex_characters = 8
            return "{0:#0{1}x}".format(self, num_hex_characters+2)

    def print_get_int(fix_pt, debug_print=False):
        # print the fixed point value and also return as an 
        # overriden int with a __repr__ method that prints in hex 
        val = Integer(int(t.base_repr(base=2)[0],2))
        if debug_print:
            print(val)
        return val

    if (fc == 'passthru') or (fc == 'passthrough'):
        k = 1
        sos = np.matrix([[1,0,0,1,0,0], 
                         [1,0,0,1,0,0]])
    else: # for any integer cutoff frequency 
        (z,p,k) = butter(order, fc/(fs/2), output='zpk')
        sos = zpk2sos(z,p,1)

    coeffs = {}
    coeff_idx = 0
    # gain of filter scale 1 (coeff_idx 0)
    t = numfi(k, 1, word_length, scale_frac, fixed=True)
    coeffs[coeff_idx] = print_get_int(t)
    coeff_idx += 1

    for r in range(np.shape(sos)[0]):
        for c in range(np.shape(sos)[1]):
            if (r == 1) and (c == 0):
                coeff_idx = 9 # advance to the second sos stage 
            if c < 2:
                frac_val = num_frac
            if c > 3:
                frac_val = den_frac
            t = numfi(sos[r,c], 1, word_length, frac_val, fixed=True)
            if c!=3:
                coeffs[coeff_idx] = print_get_int(t)
                coeff_idx+=1

    # coefficients 7,8 are scale2, scale3 which are 1 
    scale2_scale3_values = 1
    t = numfi(scale2_scale3_values, 1, word_length, scale_frac, fixed=True)
    coeffs[7] = print_get_int(t)
    coeffs[8] = print_get_int(t)

    coeffs[15] = Integer((output_offset << 14) + output_scale)

    return coeffs