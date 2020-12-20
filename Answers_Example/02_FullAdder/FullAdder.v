module FullAdder(A, B, C, out, cy);
/*
  FullAdder.v
    1 bit Full Adder.

    Author：Yuki Fukuda
    Date：2020/12/01
    Licence：MIT License

    // Port Definition
    Input
    -----
        A, B, C: 1 bit input number

    Output
    ------
        out: 1 bit Result
        cy : Carry bit
*/

/* Port Definition */
// Inputs
input wire A, B, C;

// Outputs
output wire out;
output wire cy;

/* Internal Signal Definition (If you need) */
wire unsigned [1:0] ans;

/* RTL */
assign ans = A + B + C;
assign cy = ans[1];
assign out = ans[0];

/*
Any other idea?
*/

endmodule