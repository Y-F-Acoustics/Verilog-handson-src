`timescale 1 us / 1 ns
module test_Adder4bit();
 /*
   test_Adder4bit.v
    Test bench for Adder_4bit.v

    Author：Yuki Fukuda
    Date：2020/12/02
    Licence：MIT License

    // Signal definition
    in_A, in_B: 4 bit number for input to A and B.
    out_ans   : Calcurated answer
 */

/* Signal definition */
reg unsigned [3:0] in_A = 4'b0000;
reg unsigned [3:0] in_B = 4'b0000;
wire unsigned [4:0] out_ans;

Adder_4bit Adder_4bit(.A(in_A), .B(in_B), .ans(out_ans));

always begin
    #1 in_A <= in_A + 1'b1;
end

always begin
    #2 in_B <= in_B + 1'b1;
end
endmodule