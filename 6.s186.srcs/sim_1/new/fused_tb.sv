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
          result_ready, result_valid = 1;
    logic clk;

    fused_med_res fused(.aclk(clk), 
                        .s_axis_a_tdata(a_data), .s_axis_a_tvalid(a_valid), .s_axis_a_tready(a_ready),
                        .s_axis_b_tdata(b_data), .s_axis_b_tvalid(b_valid), .s_axis_b_tready(b_ready),
                        .s_axis_c_tdata(c_data), .s_axis_c_tvalid(c_valid), .s_axis_c_tready(c_ready),
                        .m_axis_result_tdata(result), .m_axis_result_tready(result_ready), .m_axis_result_tvalid(result_valid));

    always begin
        #5;
        clk = !clk;
    end

    initial begin
        clk = 0;
        #5
        
        a_data = -5;
        b_data = -5;
        c_data = -5;
        #5;
        
        /**
        a_valid = 1;
        b_valid = 1;
        c_valid = 1;
        result_ready = 1;
        **/
    end

endmodule
