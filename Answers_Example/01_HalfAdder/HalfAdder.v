module HalfAdder(A, B, out, cy);
/*
  HalfAdder.v
    1 bit Half Adder.

    Author：Yuki Fukuda
    Date：2020/12/01
    Licence：MIT License

    // Port Definition
    Input
    -----
        A, B: 1 bit input number

    Output
    ------
        out: 1 bit Result
        cy : Carry bit
*/

/* Port definition */
// Inputs
input wire A, B;

// Outputs
output wire out;
output wire cy;


/* Internal Signal definition (If you need) */
wire unsigned [1:0] ans;

/* RTL */
assign ans = A + B;
assign cy = ans[1];
assign out = ans[0];

/*
// Other idea.
assign cy = A & B;
assign out = A ^ B;
*/

endmodule