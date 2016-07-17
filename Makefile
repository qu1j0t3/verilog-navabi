
Mpx4_1Tester.vvp: Mpx4_1Tester.v Mpx4_1.v
	iverilog -o $@ $^

Detector110Tester.vvp: Detector110Tester.v Detector110.v
	iverilog -o $@ $^

clean: ; rm -f *.vvp *.vcd
