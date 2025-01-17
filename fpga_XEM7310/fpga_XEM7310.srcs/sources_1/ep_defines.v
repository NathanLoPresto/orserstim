//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 07/28/2021 01:22:20 PM
// Design Name:
// Module Name: ep_defines
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

// establish the addresses of all OpalKelly endpoints here. This will ease keeping tracking between the
//  Verilog code and the API easier.

// Naming system
// CLASS_PARAM_NAME_GEN_BIT_GEN_ADDR // address=ASSOCIATED_ADDRESS_PARAM bit_width=0123456789
// "CLASS" = Python class name
// - Matches chip names for SPI
// - I2CDC or I2CDAQ for I2C on the Daughtercard or the DAQ board (Verilog does not allow hyphens)
// "PARAM_NAME" = parameter name to be used in the Python
// "GEN_BIT" = included if the parameter holds a bit and we can add the bit_width
//     of the parameter to get the bit for the next instance. If any bit of
//     the Endpoint would move outside of the Endpoint.MAX_WIDTH range, then
//     its address will be incremented and it will start at bit 0 when
//     advance_endpoints is called on it.
// "GEN_ADDR" = included to move the Endpoint to the the address + 1 when
//     advance_endpoints is called
//     get the address for the next instance
// "// address=ASSOCIATED_ADDRESS_PARAM" = the address associated with a bit parameter
// - If dependent on an address held by another parameter, use that parameter's name
//     as it is in this file
// - Otherwise, use the hardcoded associated address
// "// bit_width=0123456789" = the bit width of the parameter

// Parameters holding an address should have the address written in hexadecimal
// Parameters holding a bit should have the bit written in decimal without the size specification
// Comments that are not "// address=" or "// bit_width=" should go on a separate line from the parameter definition

`define AD7961_PIPE_OUT_GEN_ADDR 8'hA1 // bit_width=32
`define ADS8686_PIPE_OUT_GEN_ADDR 8'hA5 // bit_width=32
`define DEBUGFIFO_PIPE_OUT 8'hA7 // bit_width=32
`define ADS8686_WB_IN 8'h05 // bit_width=32
`define DAC80508_HOST_WIRE_IN_GEN_ADDR 8'h06 // bit_width=32
`define I2CDC_WIRE_IN 8'h08 // bit_width=16
`define I2CDC_IN_GEN_BIT 0 // address=I2CDC_WIRE_IN bit_width=16
`define I2CDAQ_WIRE_IN_GEN_ADDR 8'h0A // bit_width=16
`define I2CDAQ_IN_GEN_BIT 0 // address=I2CDAQ_WIRE_IN bit_width=16

`define ADS8686_OUT 8'h24 // bit_width=32
`define I2CDC_WIRE_OUT_GEN_ADDR 8'h25 // bit_width=8
`define I2CDC_OUT_GEN_BIT 0 // address=I2CDC_WIRE_OUT bit_width=8
`define I2CDAQ_WIRE_OUT_GEN_ADDR 8'h26 // bit_width=8
`define I2CDAQ_OUT_GEN_BIT 0 // address=I2CDAQ_WIRE_OUT bit_width=8

`define I2CDAQ_PIPE_OUT_GEN_ADDR 8'hAB // bit_width=32

`define GPIO_DEBUG_WIRE_IN 8'h00 // bit_width=32
`define GP_HOST_FPGAB_GPIO_WIRE_IN 8'h01 // bit_width=32
`define GP_PWR_REG_ADC_EN_WIRE_IN 8'h02 // bit_width=32

`define DDR3_RESET_READ_WRITE_ENABLE 8'h03 // bit_width=1
`define DDR3_DAC_WRITE_ENABLE 0 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=1
`define DDR3_DAC_READ_ENABLE 1 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=1
`define DDR3_RESET 2 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=1
`define AD5453_DATA_SEL_GEN_BIT 3 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=3
// [5:3], [8:6], [11:9], [14:12], [17:15], [20:18]
`define AD5453_DATA_SEL_GEN_BIT_LEN 3 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=3
`define DAC80508_DATA_SEL_GEN_BIT 21 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=3
`define DAC80508_DATA_SEL_GEN_BIT_LEN 3 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=3
//[23:21], [26:24] 
`define DDR3_ADC_DEBUG 28 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=1
`define DDR3_ADC_ADDR_SET 29 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=1
`define DDR3_ADC_WRITE_ENABLE 30 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=1
`define DDR3_ADC_TRANSFER_ENABLE 31 // address=DDR3_RESET_READ_WRITE_ENABLE bit_width=1

`define AD5453_SERIES_RES_WIRE_IN 8'h04 // bit_width=32
`define AD5453_FILTER_DATA_SEL_GEN_BIT 0 // address=AD5453_SERIES_RES_WIRE_IN bit_width=3
// [2:0], [5:3], [8:6], [11:9], [14:12], [17:15]
`define AD5453_FILTER_DATA_SEL_GEN_BIT_LEN 3 // address=AD5453_SERIES_RES_WIRE_IN bit_width=3
`define AD5453_DOWNSAMPLE_ENABLE_GEN_BIT 18 // address=AD5453_SERIES_RES_WIRE_IN bit_width=1
`define AD5453_SUMMATION_ENABLE_GEN_BIT 24 // address=AD5453_SERIES_RES_WIRE_IN bit_width=1

`define FILTER_SEL_WIRE_IN 8'h11 // bit_width=32
`define AD5453_FILTER_SEL_GEN_BIT 0 // address=FILTER_SEL_WIRE_IN bit_width=1
`define AD5453_FILTER_SEL_GEN_BIT_LEN 1 // address=FILTER_SEL_WIRE_IN bit_width=1
`define DAC80508_FILTER_SEL_GEN_BIT 6 // address=FILTER_SEL_WIRE_IN bit_width=1
`define DAC80508_FILTER_SEL_GEN_BIT_LEN 1 // address=FILTER_SEL_WIRE_IN bit_width=1
`define DDR3_FIFO_DAC_IN_RST 8 // address=FILTER_SEL_WIRE_IN bit_width=1
`define DDR3_FIFO_DAC_READ_RST 9 // address=FILTER_SEL_WIRE_IN bit_width=1
`define DDR3_FIFO_ADC_IN_RST 10 // address=FILTER_SEL_WIRE_IN bit_width=1
`define DDR3_FIFO_ADC_TRANSFER_RST 11 // address=FILTER_SEL_WIRE_IN bit_width=1
`define DDR3_USE_ADC_READY 12 // address=FILTER_SEL_WIRE_IN bit_width=1

// wireIn for host driven data 
`define AD5453_HOST_WIRE_IN_GEN_ADDR 8'h0B // bit_width=32

// trigger in addresses
`define GP_RST_VALID_TRIG_IN 8'h40 // bit_width=32
`define I2C_TRIG_IN 8'h41 // bit_width=32
`define ADC_TIMING_TRIG_IN 8'h42 // bit_width=32
`define DDR_RESET_ADDR_TRIG 8'h43 // bit_width=32

`define AD7961_PLL_LOCKED_WIRE_OUT 8'h21 // bit_width=32
`define AD7961_PLL_LOCKED 0 // address=AD7961_PLL_LOCKED_WIRE_OUT bit_width=1
`define AD7961_TIMING_PLL_LOCKED 1 // address=AD7961_PLL_LOCKED_WIRE_OUT bit_width=1

`define DDR3_INIT_CALIB_COMPLETE 0 // address=0x27 bit_width=1
`define DDR3_WIRE_OUT 8'h29 // bit_width=32

`define AD5453_COEFF_DEBUG_0 8'h2a // bit_width=32
`define AD5453_COEFF_DEBUG_1 8'h2b // bit_width=32
`define AD5453_COEFF_DEBUG_2 8'h2c // bit_width=32
`define AD5453_COEFF_DEBUG_3 8'h2d // bit_width=32

`define GP_FIFO_FLAG_I2C_DONE_TRIG_OUT 8'h60 // bit_width=32

`define DEBUGFIFO_FIFO_EMPTY 24 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define DEBUGFIFO_FIFO_HALFFULL 23 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define DEBUGFIFO_FIFO_FULL 22 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1

`define I2CDAQ_DONE_GEN_BIT 20 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define I2CDC_DONE_GEN_BIT 16 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define ADS8686_FIFO_EMPTY 15 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define ADS8686_FIFO_HALFFULL 14 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define ADS8686_FIFO_FULL 13 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define AD7961_FIFO_EMPTY_GEN_BIT 9 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 6 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 9 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 12 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define AD7961_FIFO_HALFFULL_GEN_BIT 5 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 5 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 8 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 11 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define AD7961_FIFO_FULL_GEN_BIT 1 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 4 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 7 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
// `define AD7961 10 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1
`define GP_HOST_INTERRUPT 0 // address=GP_FIFO_FLAG_I2C_DONE_TRIG_OUT bit_width=1

`define DDR3_BLOCK_PIPE_IN 8'h80 // bit_width=32
`define DDR3_BLOCK_PIPE_OUT 8'ha6 // bit_width=32
`define DDR3_BLOCK_PIPE_OUT_FG 8'ha8 // bit_width=32
//`define DS_TRIG_OFFSET 32'h08 // bit 8

//ep40trig[0] will be used to trigger the Wishbone formatter/state machine, telling the state machine that wi0 is valid
//ep40trig[1] will be used as the master reset for the rest of the design
//ep40trig[2] will be used as the reset for the ADS7952 FIFO
//ep40trig[3] will be used as the reset for the "fast" clock pll
//ep40trig[4] is the reset for adc7961_0_fifo
//ep40trig[5] is the reset for adc7961_1_fifo
//ep40trig[6] is the reset for adc7961_2_fifo
//ep40trig[7] is the reset for adc7961_3_fifo
//ep40trig[8] will be used to trigger the Wishbone formatter/state machine for dac_0, telling the state machine that wi0 is valid
//ep40trig[9] will be used to trigger the Wishbone formatter/state machine for dac_1, telling the state machine that wi0 is valid
//ep40trig[10] reset the programmable clock divider for the ADS8686 spi
//ep40trig[11] trigger the ADS8686 SPI wishbone when in host driven mode


// trigger in at 0x40
// `define TI40_ 0
`define GP_SYSTEM_RESET 1 // address=GP_RST_VALID_TRIG_IN bit_width=1
// `define TI40_ 2 // not used
`define AD7961_PLL_RESET 3 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define DAC80508_REG_TRIG_GEN_BIT 4 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define AD5453_REG_TRIG_GEN_BIT 8 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define ADS8686_CLK_DIV_RESET 14 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define ADS8686_WB_CONVERT 15 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define DAC80508_WB_CONVERT_GEN_BIT 17 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define ADS8686_FIFO_RESET 18 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define I2CDC_RESET_GEN_BIT 23 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define I2CDC_START_GEN_BIT 27 // address=GP_RST_VALID_TRIG_IN bit_width=1
`define AD7961_TIMING_PLL_RESET 31 // address=GP_RST_VALID_TRIG_IN bit_width=1

// wire in status signals for the DDR
`define DDR3_INIT_CALIB_COMPLETE 8'h20 // bit_width=32
`define DDR3_INIT_COMPLETE 0 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_IN1_FULL 1 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_IN1_EMPTY 2 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_IN2_FULL 3 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_IN2_EMPTY 4 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_OUT1_FULL 5 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_OUT1_EMPTY 6 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_OUT2_FULL 7 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_OUT2_EMPTY 8 // address=DDR3_INIT_CALIB_COMPLETE bit_width=1
`define DDR3_ADC_DATA_COUNT 9 // address=DDR3_INIT_CALIB_COMPLETE bit_width=16

`define DDR3_ADC_DATA_CNT 8'h3e // bit_width=32

// trigger in at 0x41
`define I2CDC_MEMSTART_GEN_BIT 0 // address=I2C_TRIG_IN bit_width=1
`define I2CDC_MEMWRITE_GEN_BIT 4 // address=I2C_TRIG_IN bit_width=1
`define I2CDC_MEMREAD_GEN_BIT 8 // address=I2C_TRIG_IN bit_width=1

`define I2CDAQ_RESET_GEN_BIT 12 // address=I2C_TRIG_IN bit_width=1
`define I2CDAQ_START_GEN_BIT 14 // address=I2C_TRIG_IN bit_width=1
`define I2CDAQ_MEMSTART_GEN_BIT 16 // address=I2C_TRIG_IN bit_width=1
`define I2CDAQ_MEMWRITE_GEN_BIT 18 // address=I2C_TRIG_IN bit_width=1
`define I2CDAQ_MEMREAD_GEN_BIT 20 // address=I2C_TRIG_IN bit_width=1
`define DAC80508_CLK_DIV_RESET_GEN_BIT 22 // address=I2C_TRIG_IN bit_width=1
`define DAC80508_HOST_TRIG_GEN_BIT 23 // address=I2C_TRIG_IN bit_width=1
`define AD5453_HOST_TRIG_GEN_BIT 24 // address=I2C_TRIG_IN bit_width=1
`define I2CDAQ_FIFO_RESET_GEN_BIT 30 // address=I2C_TRIG_IN bit_width=1

// trigger in at 0x42 -- sync to adc_timing_clk
`define AD7961_FIFO_RESET_GEN_BIT 4 // address=ADC_TIMING_TRIG_IN bit_width=1
`define AD7961_RESET_GEN_BIT 19 // address=ADC_TIMING_TRIG_IN bit_width=1
`define DEBUGFIFO_CNT_RESET 23 // address=ADC_TIMING_TRIG_IN bit_width=1
`define DEBUGFIFO_FIFO_RESET 24 // address=ADC_TIMING_TRIG_IN bit_width=1
`define DDR3_DAC_CLK_RESET 25 // address=ADC_TIMING_TRIG_IN bit_width=1
// trigger in at 0x43 -- sync to clk_ddr_ui
`define DDR3_UI_RESET 0 // address=DDR_RESET_ADDR_TRIG bit_width=1
`define DDR3_ADC_ADDR_RESET 1 // address=DDR_RESET_ADDR_TRIG bit_width=1


// wire in at 0x00
`define GPIO_CSB_DEBUG 0 // address=GPIO_DEBUG_WIRE_IN bit_width=3
`define GPIO_CSB_DEBUG_LEN 3 // address=GPIO_DEBUG_WIRE_IN bit_width=3
`define GPIO_SCLK_DEBUG 3 // address=GPIO_DEBUG_WIRE_IN bit_width=3
`define GPIO_SCLK_DEBUG_LEN 3 // address=GPIO_DEBUG_WIRE_IN bit_width=3
`define GPIO_SDI_DEBUG 6 // address=GPIO_DEBUG_WIRE_IN bit_width=3
`define GPIO_SDI_DEBUG_LEN 3 // address=GPIO_DEBUG_WIRE_IN bit_width=3
`define GPIO_ADS_CONVST_DEBUG 9 // address=GPIO_DEBUG_WIRE_IN bit_width=3
`define GPIO_ADS_CONVST_DEBUG_LEN 3 // address=GPIO_DEBUG_WIRE_IN bit_width=3

// wire in at 0x01
`define ADS8686_HOST_FPGA 0 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_UP_WIRE_IN 1 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_UP_WIRE_IN_LEN 6 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_DOWN_WIRE_IN 7 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_DOWN_WIRE_IN_LEN 6 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_3V3_WIRE_IN 13 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_3V3_WIRE_IN_LEN 6 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_LVDS_WIRE_IN 20 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define GPIO_LVDS_WIRE_IN_LEN 4 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define AD7961_WIRE_RESET_GEN_BIT 24 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define DAC80508_HOST_FPGA_GEN_BIT 25 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1
`define DAC80508_HOST_FPGA_GEN_BIT_LEN 2 // address=GP_HOST_FPGAB_GPIO_WIRE_IN bit_width=1

// wirein at 0x02
`define AD7961_ENABLE_GEN_BIT 1 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1
`define AD7961_ENABLE_LEN 4 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1

`define AD5453_PERIOD_ENABLE 5 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=10
`define AD5453_PERIOD_ENABLE_LEN 10 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1

`define AD7961_GLOBAL_ENABLE 15 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1
`define AD7961_GLOBAL_ENABLE_LEN 3 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1

// power supply enables
`define POWER_15V_ENABLE 18 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1
`define POWER_1V8_ENABLE 19 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1
`define POWER_3V3_ENABLE 20 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1
`define POWER_5V_ENABLE 21 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1
`define POWER_N15V_ENABLE 22 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1

`define GP_CURRENT_PUMP_ENABLE 23 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1
`define GP_CURRENT_PUMP_ENABLE_LEN 2 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1

`define ADS8686_RESET 25 // address=GP_PWR_REG_ADC_EN_WIRE_IN bit_width=1

// Don't need address for these so can just use 0x0 (must be hex)
// To use GEN_BIT with bit_width for RegBridge incrementing between instances,
// need the numbers in decimal, not hex.
// 8'h00 == 0
// 8'h05 == 5
// 8'h2B == 43
// Only 1 ADS8686 instantiation so no GEN_BIT
`define ADS8686_REGBRIDGE_OFFSET 8'h00 // bit_width=32
`define DAC80508_REGBRIDGE_OFFSET_GEN_ADDR 8'h05 // bit_width=32 addr_step=20
`define AD5453_REGBRIDGE_OFFSET_GEN_ADDR 8'h2D // bit_width=32 addr_step=20

// FPGA test Endpoints
`define FPGATEST_STATIC_READ_WO 8'h3F // bit_width=32
`define FPGATEST_STATIC_READ_PO 8'hBF // bit_width=32
`define FPGATEST_LOOPED_WI 8'h1E // bit_width=32
`define FPGATEST_LOOPED_WO 8'h3E // bit_width=32
`define FPGATEST_TI_ADDR 8'h5F // bit_width=32
`define FPGATEST_TI 0 // address=FPGATEST_TI_ADDR bit_width=1
`define FPGATEST_TI_CONFIRM 8'h3D // bit_width=32
`define FPGATEST_TO_ADDR 8'h7F // bit_width=32
`define FPGATEST_TO 0 // address=FPGATEST_TO_ADDR bit_width=1

// I2C test Endpoints
`define I2CTEST_MESSAGE_0 8'h3C // bit_width=32
`define I2CTEST_MESSAGE_1 8'h3B // bit_width=32

// TODO set this up!
// `define GP_NUM_OUTGOING_EPS 13 // address= bit_width=
