
Pr2_4_101DetectorTester.vvp: Pr2_4_101DetectorTester.v Pr2_3_101Detector.v
	iverilog -o $@ $^

Pr2_2_MajorityTester.vvp: Pr2_2_MajorityTester.v Pr2_2_Majority.v
	iverilog -o $@ $^

Mpx4_1Tester.vvp: Mpx4_1Tester.v Mpx4_1.v
	iverilog -o $@ $^

Detector110Tester.vvp: Detector110Tester.v Detector110.v
	iverilog -o $@ $^

clean: ; rm -f *.vvp *.vcd

