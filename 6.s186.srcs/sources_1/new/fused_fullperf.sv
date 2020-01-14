`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2020 04:35:47 PM
// Design Name: 
// Module Name: fused_fullperf
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


module fused_fullperf(
        input signed [31:0] a_data, b_data, c_data, result,
        input a_valid, a_ready, b_valid, b_ready, c_valid, c_ready, result_valid, result_ready,
              clk
    );
    fused_full_perf fused3(.aclk(clk), 
                          .s_axis_a_tdata(a_data), .s_axis_a_tvalid(a_valid), .s_axis_a_tready(a_ready),
                          .s_axis_b_tdata(b_data), .s_axis_b_tvalid(b_valid), .s_axis_b_tready(b_ready),
                          .s_axis_c_tdata(c_data), .s_axis_c_tvalid(c_valid), .s_axis_c_tready(c_ready),
                          .m_axis_result_tdata(result), .m_axis_result_tready(result_ready), .m_axis_result_tvalid(result_valid));
endmodule
