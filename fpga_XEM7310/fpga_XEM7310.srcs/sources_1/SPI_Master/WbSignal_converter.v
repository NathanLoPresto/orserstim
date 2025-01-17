`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UST
// Engineer: Ian Delgadillo Bonequi
// 
// Create Date: 11/30/2020 10:01:41 PM
// Design Name: 
// Module Name: WbSignal_converter
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


module WbSignal_converter(clk, rst, ep_dataout, trigger, o_stb, cmd_word, int_o

    );
    input wire clk, rst;
    input wire [31:0] ep_dataout;
    input wire trigger;
    input wire int_o;
    output reg o_stb;
    output reg [33:0] cmd_word;
    
    //states
    reg [4:0] state, nextstate;
    //state encoding
    parameter S0 = 5'b00000;
    parameter S1 = 5'b00001;
    parameter S2 = 5'b00010;
    parameter S3 = 5'b00011;
    parameter S4 = 5'b01111;
    parameter read = 5'b00100;//this state and the ones below will initiate transfer of data from the ADC to the FIFO
    parameter read1 = 5'b00101;//this will ensure that there is not need for host intervention to move data from the SPI master to the FIFO
    parameter read2 = 5'b00110;
    parameter read3 = 5'b00111;
    parameter read4 = 5'b01000;
    parameter read5 = 5'b01001;
    parameter read6 = 5'b01010;
    parameter read7 = 5'b01011;
    
    
    //state register
    always@(posedge clk)begin
        if(rst)begin
            state <= S0;
        end
        else begin
            state <= nextstate;
        end
    end   
    
    //nextstate logic
    always@(*)begin
        case(state)
            S0: begin
                if(trigger)begin // trigger a wishbone write 
                    nextstate = S1;
                end
                 else if(int_o)begin // trigger a read when Wishbone slave sends interrupt signals (this is from spi_top)
                    nextstate = read;
                 end
                else begin
                    nextstate = S0;
                end
            end
            S1: begin
                nextstate = S2;
            end
            S2: begin
                nextstate = S3;
            end
            S3: begin
                nextstate = S4;
            end
            S4: begin
                nextstate = S0;
            end
            read: begin
                nextstate = read1;
            end
            read1: begin
                nextstate = read2;
            end
            read2: begin
                nextstate = read3;
            end
            read3: begin
                nextstate = read4;
            end
            read4: begin
                nextstate = read5;
            end
            read5: begin
                nextstate = read6;
            end
            read6: begin
                nextstate = read7;
            end
            read7: begin
                nextstate = S0;
            end
            default: nextstate = S0;
        endcase
    end
    
    always @(posedge clk) begin
        if (rst) cmd_word <= 34'd0;
        else if (load) cmd_word <= {ep_dataout[31:30], 2'b0, ep_dataout[29:0]};
        else if (read_cmd[0]) cmd_word <= 34'h200000001; // read command 
        else if (read_cmd[1]) cmd_word <= 34'd0; // read command (off?)
    end
    
    reg load;
    reg [1:0]read_cmd;
    
    //output logic
    always@(*)begin
        case(state)
            S0: begin
                    load = 1'b0;
                    read_cmd = 2'b00;
                    o_stb = 1'b0;    
                end
            S1: begin
                load = 1'b1;
                read_cmd = 2'b00;
                o_stb = 1'b0;
            end
            S2: begin
                    load = 1'b0;
                    read_cmd = 2'b00;
                    o_stb = 1'b1; //output strobe to the wishbone bus master 
            end
            S3: begin
                    load = 1'b0;
                    read_cmd = 2'b00;
                    o_stb = 1'b1;
            end
            S4: begin
                    load = 1'b0;
                    read_cmd = 2'b00;
                    o_stb = 1'b0;
            end
            read: begin
                    load = 1'b0;
                    read_cmd = 2'b01;
                    o_stb = 1'b0;
            end
            read1: begin
                    load = 1'b0;
                    read_cmd = 2'b00;                    
                    o_stb = 1'b1;
            end
            read2: begin
                    load = 1'b0;
                    read_cmd = 2'b00;
                    o_stb = 1'b1;
            end
            read3: begin
                    load = 1'b0;
                    read_cmd = 2'b00;                    
                    o_stb = 1'b0;
            end
            read4: begin
                    load = 1'b0;
                    read_cmd = 2'b10;
                    o_stb = 1'b0;
            end
            read5: begin
                    load = 1'b0;
                    read_cmd = 2'b00;                  
                    o_stb = 1'b1;
            end
            read6: begin
                    load = 1'b0;
                    read_cmd = 2'b00;                   
                    o_stb = 1'b1;
            end
            read7: begin
                    load = 1'b0;
                    read_cmd = 2'b00;                    
                    o_stb = 1'b0;
            end
            default: begin
                    load = 1'b0;
                    read_cmd = 2'b00;                    
                    o_stb = 1'b0;
                end
        endcase
    end
endmodule
