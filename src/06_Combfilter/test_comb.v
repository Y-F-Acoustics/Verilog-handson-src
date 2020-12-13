`timescale 1 us / 1 ns
module test_comb();
    /*
        test_comb.v
        test bench for combfilter

        Author : Yuki Fukuda
        Date   : 2020/12/13
        License: MIT License

        // Signal definition
        in_CLK : input for CLK_i
        in_data: input for data_in
        out_data: output for data_out
    */

    /* Signal definition */
    reg in_CLK = 1'b0;
    reg unsigned [3:0] in_data = 4'h0;

    wire unsigned [3:0] out_data;
    reg unsigned [4:0] counter = 5'b00000;

    /* Instantiation */
    combfilter combfilter(.CLK_i(in_CLK), .data_in(in_data), .data_out(out_data));

    /*Test case*/
    /* Write your test case here */
endmodule