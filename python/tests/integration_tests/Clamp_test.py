"""Integration test for the Clamp board class

Relies on FPGA class working
October 2021

Abe Stroschein, ajstroschein@stthomas.edu
"""

import pytest
import os
import sys
from pyripherals.core import FPGA, Endpoint


# The boards.py file is located in the covg_fpga folder so we need to find that folder. If it is not above the current directory, the program fails.
cwd = os.getcwd()
if 'covg_fpga' in cwd:
    covg_fpga_index = cwd.index('covg_fpga')
    covg_path = cwd[:covg_fpga_index + len('covg_fpga') + 1]
else:
    print('covg_fpga folder not found. Please navigate to the covg_fpga folder.')
    assert False
boards_path = os.path.join(covg_path, 'python')
sys.path.append(boards_path)
from boards import Clamp


# Fixtures
@pytest.fixture(scope='module')
def f():
    f = FPGA()
    assert f.init_device()
    yield f
    # Teardown
    f.xem.Close()


@pytest.fixture(scope='module')
def clamp(f):
    Endpoint.update_endpoints_from_defines()
    yield Clamp(fpga=f)


# Tests
def test_multiple_instances(f):
    clamps = []
    for i in range(4):
        clamps.append(Clamp(f))
        # Must use endpoints_from_defines directly rather than get_chip_endpoints
        # so we increment the reference dictionary rather than a copy.
        Endpoint.advance_endpoints(
            Endpoint.endpoints_from_defines.get('I2CDC'))

    # Make sure all the endpoints for chips within a Clamp are the same
    # Skip the first chip because that is what we will compare against
    for clamp in clamps:
        assert all([chip.endpoints == clamp.TCA[0].endpoints for chip in [clamp.TCA[1], clamp.UID, clamp.DAC]])

    # Make sure the endpoints for different Clamps are different from using advance_endpoints()
    # Skip the first element in clamps because that is what we will compare against
    # Can just use TCA[0] since we already checked that all the chips have the same endpoints
    assert all(
        [x.TCA[0].endpoints != clamps[0].TCA[0].endpoints for x in clamps[1:]])
