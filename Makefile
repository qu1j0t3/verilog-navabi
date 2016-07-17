
Detector110Tester.vvp: Detector110Tester.v Detector110.v
	iverilog -o $@ $^

clean: ; rm -f *.vvp
