module mydff(D, CLK, Q);
    /*
        mydff.v
        D-FF with clock

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
    // write register definition if you need

    /* RTL */
    /* Output latched data */
    always @ (posedge CLK) begin
        // Write your code here
    end

    /* To prevent meta stable */
    always @ (negedge CLK) begin
        // Write your code here
    end
endmodule