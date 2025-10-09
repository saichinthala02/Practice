`include "q9_8x1_using_4x1.v"
module top;
	reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
	wire y;
	integer seed=2154;
	mux_8x1_using_4x1 dut(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

	initial begin
		$display("i0  i1  i2  i3  i4  i5  i6  i7  s2  s1  s0  y");
		repeat(20) begin
		{i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2}=$random(seed);
		#1;
		$display("%b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b   %b",i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,y);
		end
	end
endmodule

/* Output:-
# Start time: 17:51:44 on Sep 12,2025
# Loading work.top
# Loading work.mux_8x1_using_4x1
# Loading work.mux_4x1
# i0  i1  i2  i3  i4  i5  i6  i7  s2  s1  s0  y
# 0   0   0   0   0   0   1   0   1   0   0   0
# 1   0   1   0   0   0   0   0   0   0   0   1
# 1   0   0   0   1   1   1   1   1   1   1   1
# 0   0   1   1   0   0   0   0   1   0   1   0
# 1   1   0   1   0   0   1   1   1   0   1   0
# 1   0   1   1   0   1   0   0   1   1   0   0
# 1   0   1   1   0   0   1   0   1   1   1   0
# 1   1   1   1   1   1   0   0   0   0   1   1
# 0   0   1   0   0   0   1   0   0   0   1   0
# 0   0   1   1   0   0   1   1   0   1   1   1
# 0   0   1   1   1   1   1   1   1   1   0   1
# 0   1   1   0   0   0   1   1   0   0   0   0
# 1   1   1   0   1   1   1   1   0   1   0   1
# 0   0   0   0   1   1   0   1   0   0   0   0
# 1   0   0   0   0   0   1   0   1   0   1   0
# 1   0   1   0   1   1   1   1   1   1   1   1
# 0   0   0   1   1   0   0   0   1   1   0   0
# 1   1   0   1   0   0   1   1   0   1   1   1
# 1   1   1   0   1   1   0   1   1   1   1   1
# 1   1   1   1   0   1   0   1   0   1   1   1
*/
