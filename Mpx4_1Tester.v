`timescale 1ns/100ps

module Mpx4_1Tester;
	reg s0, s1, clk;
	reg [3:0] d;
	wire w;
	
	Mpx4_1 UUT (s0, s1, d, w);
	
	initial begin
		$dumpfile("Mpx4_1Tester.vcd");
		$dumpvars(0, Mpx4_1Tester);
		clk = 0; d = 0; s0 = 0; s1 = 0;
	   #28 d = 4'b0001;
	   #28 d = 4'b0010;
	   #28 d = 4'b0100;
	   #28 d = 4'b1000;
	end
	initial repeat (44) #7 s0 = ~s0;
	initial repeat (22) #14 s1 = ~s1;
endmodule
