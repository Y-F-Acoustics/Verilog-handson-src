module mycounter_4bit(CLK, out);
    /*
		mycounter_4bit.v
        4 bit counter with clock

        Author : Yuki Fukuda
        Date   : 2020/12/11
        License: MIT License

        // Port definition
        Input
        -----
            CLK: counter clock

        Output
        ------
            out: 4 bit unsigned integer increments with positive edge  of clock
    */

    /* Port definition */
    // Input
    input wire CLK;

    // Output
    output reg unsigned [3:0] out = 4'b0000;

    /* Internal register */


    /* RTL */
    always @ (posedge CLK) begin
        out <= out + 1'b1;
    end


endmodule