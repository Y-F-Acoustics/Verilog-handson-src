module mydff(D, CLK, Q);
    /*
        mydff.v
        D-FF with clock

        Author : Yuki Fukuda
        license: MIT License
        Date   : 2020/12/10

        Port definition
        Input
        -----
            D   : 1 bit input data
            CLK : CLK

        Output
        ------
            Q   : 1 bit output data with positive edge of clock
    */

    /* Port Definition */
    // Input
    input wire D;
    input wire CLK;

    // Output
    output reg Q = 1'b0;

    /* Internal register */
    reg tmp = 1'b0;

    /* RTL */
    /* Output latched data */
    always @ (posedge CLK) begin
        Q <= tmp;
    end

    /* To prevent meta stable */
    always @ (negedge CLK) begin
        tmp <= D;
    end
endmodule