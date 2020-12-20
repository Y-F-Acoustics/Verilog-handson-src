`timescale 1 us / 1 ns
module test_mydivider();
    /*
		test_mydivider.v
		Test bench for mydivider.v

		Author : Yuki Fukuda
		Date   : 2020/12/13
		License: MIT License

		// Signal definition
		in_CLK_i : for CLK_i
		out_CLK_o: for CLK_o
    */

	/* Signal definition */
	reg in_CLK_i = 1'b0;
	wire out_CLK_o;

	mydivider_2 mydivider_2(.CLK_i(in_CLK_i), .CLK_o(out_CLK_o));

	/* Test case */
	always begin
		#5 in_CLK_i <= ~in_CLK_i;
	end

endmodule