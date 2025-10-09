// Implementation of 8x1 using 4x1

module mux_4x1(i0,i1,i2,i3,s0,s1,y);
	input i0,i1,i2,i3,s0,s1;
	output y;
	assign y = (s1==0)?((s0==0)?i0:i1):((s0==0)?i2:i3);
endmodule

module mux_8x1_using_4x1(i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
	input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
	output y;
	wire w1,w2;

	mux_4x1 m1(i0,i1,i2,i3,s0,s1,w1);
	mux_4x1 m2(i4,i5,i6,i7,s0,s1,w2);
	mux_4x1 m3(w1,w2,1'b0,1'b0,s2,1'b0,y);
endmodule

