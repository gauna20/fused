`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2020 03:38:33 PM
// Design Name: 
// Module Name: mult
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


module mult(
    input signed [31:0] a_data0, b_data0, c_data0, result0,
                        a_data1, b_data1, c_data1, result1,
                        a_data2, b_data2, c_data2, result2,
                        a_data3, b_data3, c_data3, result3,
    input a_valid0, a_ready0, b_valid0, b_ready0, c_valid0, c_ready0, result_valid0, result_ready0,
          a_valid1, a_ready1, b_valid1, b_ready1, c_valid1, c_ready1, result_valid1, result_ready1,
          a_valid2, a_ready2, b_valid2, b_ready2, c_valid2, c_ready2, result_valid2, result_ready2,
          a_valid3, a_ready3, b_valid3, b_ready3, c_valid3, c_ready3, result_valid3, result_ready3,
          clk              
    );
    
    fused_med_res   fused0(.aclk(clk), 
                           .s_axis_a_tdata(a_data0), .s_axis_a_tvalid(a_valid0), .s_axis_a_tready(a_ready0),
                           .s_axis_b_tdata(b_data0), .s_axis_b_tvalid(b_valid0), .s_axis_b_tready(b_ready0),
                           .s_axis_c_tdata(c_data0), .s_axis_c_tvalid(c_valid0), .s_axis_c_tready(c_ready0),
                           .m_axis_result_tdata(result0), .m_axis_result_tready(result_ready0), .m_axis_result_tvalid(result_valid0));
                           
    fused_full_res  fused1(.aclk(clk), 
                           .s_axis_a_tdata(a_data1), .s_axis_a_tvalid(a_valid1), .s_axis_a_tready(a_ready1),
                           .s_axis_b_tdata(b_data1), .s_axis_b_tvalid(b_valid1), .s_axis_b_tready(b_ready1),
                           .s_axis_c_tdata(c_data1), .s_axis_c_tvalid(c_valid1), .s_axis_c_tready(c_ready1),
                           .m_axis_result_tdata(result1), .m_axis_result_tready(result_ready1), .m_axis_result_tvalid(result_valid1));
                           
    fused_med_perf  fused2(.aclk(clk), 
                           .s_axis_a_tdata(a_data2), .s_axis_a_tvalid(a_valid2), .s_axis_a_tready(a_ready2),
                           .s_axis_b_tdata(b_data2), .s_axis_b_tvalid(b_valid2), .s_axis_b_tready(b_ready2),
                           .s_axis_c_tdata(c_data2), .s_axis_c_tvalid(c_valid2), .s_axis_c_tready(c_ready2),
                           .m_axis_result_tdata(result2), .m_axis_result_tready(result_ready2), .m_axis_result_tvalid(result_valid2));
                           
    fused_full_perf fused3(.aclk(clk), 
                           .s_axis_a_tdata(a_data3), .s_axis_a_tvalid(a_valid3), .s_axis_a_tready(a_ready3),
                           .s_axis_b_tdata(b_data3), .s_axis_b_tvalid(b_valid3), .s_axis_b_tready(b_ready3),
                           .s_axis_c_tdata(c_data3), .s_axis_c_tvalid(c_valid3), .s_axis_c_tready(c_ready3),
                           .m_axis_result_tdata(result3), .m_axis_result_tready(result_ready3), .m_axis_result_tvalid(result_valid3));
    
endmodule
