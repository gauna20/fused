`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2020 04:37:50 PM
// Design Name: 
// Module Name: fused_tb
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


module fused_tb;

    logic signed [31:0] a_data, b_data, c_data, result;
    logic a_ready, a_valid, 
          b_ready, b_valid,
          c_ready, c_valid,
          result_ready, result_valid;
    logic clk;

    fused_medres fused(.a_data(a_data), .b_data(b_data), .c_data(c_data), .result(result),
                       .a_valid(a_valid), .a_ready(a_ready),
                       .b_valid(b_valid), .b_ready(b_ready),
                       .c_valid(c_valid), .c_ready(c_ready),
                       .result_valid(result_valid), .result_ready(result_ready),
                       .clk(clk));

    always begin
        #5;
        clk = !clk;
    end

    initial begin
        clk = 0;
        a_valid = 1;
        b_valid = 1;
        c_valid = 1;
        result_ready = 1;
        
        a_data = -5;
        b_data = -5;
        c_data = -5;
        #5;
    end

endmodule
