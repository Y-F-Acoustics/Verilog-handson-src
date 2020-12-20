`timescale 1 us / 1 ns
module test_mydff();
    /*
        test_mydff.v
        Test bench for mydff.v

        Author : Yuki Fukuda
        license: MIT License
        Data   : 2020/12/10

        // Signal difinition
        in_D : 1 bit data for input D
        in_CLK: clock for input CLK
        out_Q: 1 bit data for output Q
    */

    /* Signal definition */
    // for input
    reg in_CLK = 1'b0;
    reg in_D = 1'b0;

    // for output
    wire out_Q;

    /* Instanciation */
    mydff mydff(.D(in_D), .CLK(in_CLK), .Q(out_Q));

    /* Generate clock */
    always begin
        #1 in_CLK <= ~in_CLK;
    end

    /* Generate input data */
    always @ (posedge in_CLK) begin
        in_D <= ~in_D;
    end
endmodule