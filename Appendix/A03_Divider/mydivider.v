module mydivider_2(CLK_i, CLK_o);
    /*
        mydivider.v
        clock divider (dividing ratio: 1/2)

        Author : Yuki Fukuda
        Date   : 2020/12/13
        License: MIT License

        // port definition
        Input
        -----
            CLK_i : Input clock

        Output
        ------
            CLK_o : Output divided clock
    */

    /* Port definition */
    // Input
    input wire CLK_i;

    // Output
    output wire CLK_o;

    /* Internal Register */
    reg unsigned [1:0] counter = 2'b00;

    /* RTL */
    always @ (posedge CLK_i) begin
        counter <= counter + 1'b1;
    end

    assign CLK_o = counter[0];
endmodule