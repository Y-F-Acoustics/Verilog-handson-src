`timescale 1 us/ 1 ns
module test_mycounter();
    /*
        test_mycounter.v
        test bench for mycounter_4bit

        Author : Yuki Fukuda
        Date   : 2020/12/11
        License: MIT License

        // Signal definition
        in_CLK: input for CLK
        out_out: output for out
    */

    /* Signal definition */
    reg in_CLK = 1'b0;
    wire unsigned [3:0] out_out;

    /* Instantiation */
    mycounter_4bit mycounter_4bit(.CLK(in_CLK), .out(out_out));

    /* Generate clock */
    always begin
        #10 in_CLK <= ~in_CLK;
    end
endmodule