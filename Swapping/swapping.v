//--> Swapping of two numbers in different styles.
// Using temp variable.
module top;
	integer a,b;
	integer temp;
	initial begin
		a=254;
		b=566;
		$display("------------------------------------");
		$display("--> Swapping using Temp variable <--");
		$display("------------------------------------");
		$display("Before swapping : A=%0d B=%0d",a,b);
		temp=a;
		a=b;
		b=temp;
		$display(" After swapping : A=%0d B=%0d",a,b);
		$display("------------------------------");
	end
	initial begin
		a=100;
		b=426;
		$display("--------------------------------------");
		$display("--> Swapping without Temp variable <--");
		$display("--------------------------------------");
		
		$display("Before swapping : A=%0d B=%0d",a,b);
		a=a+b;
		b=a-b;
		a=a-b;
		$display(" After swapping : A=%0d B=%0d",a,b);
		$display("------------------------------");
	end
	initial begin
		a=799;
		b=826;
		$display("------------------------------------");
		$display("--> Swapping using XOR Opreation <--");
		$display("------------------------------------");

		$display("Before swapping : A=%0d B=%0d",a,b);
		a=a^b;
		b=a^b;
		a=a^b;
		$display(" After swapping : A=%0d B=%0d",a,b);
		$display("------------------------------");
	end
	initial begin
		a=110;
		b=221;
		$display("------------------------------------");
		$display("--> Swapping using Concatination <--");
		$display("------------------------------------");

		$display("Before swapping : A=%0d B=%0d",a,b);
		{a,b}={b,a};
		$display(" After swapping : A=%0d B=%0d",a,b);
		$display("------------------------------");
	end
	initial begin
		a=100;
		b=426;
		$display("-------------------------------------------");
		$display("--> Swapping by Non-Blocking Statements <--");
		$display("-------------------------------------------");

		$display("Before swapping : A=%0d B=%0d",a,b);
		a<=b;
		b<=a;
		#1;
		$display(" After swapping : A=%0d B=%0d",a,b);
		$display("------------------------------");
	end

	reg clk=0;
	initial begin
		#50;
		a=545;
		b=369;
		$display("----------------------------------------");
		$display("--> Swapping using Pos Edge of Clock <--");
		$display("----------------------------------------");
		
		forever #5 clk=~clk;

	end
	always@(posedge clk)begin
		a<=b;
		b<=a;
		$display(" After swapping : A=%0d B=%0d",a,b);
		$display("------------------------------");
	end
	initial begin
		#100 $finish;
	end
endmodule

/* Output:-
# Start time: 18:21:25 on Oct 02,2025
# Loading work.top
# ------------------------------------
# --> Swapping using Temp variable <--
# ------------------------------------
# Before swapping : A=254 B=566
#  After swapping : A=566 B=254
# ------------------------------
# --------------------------------------
# --> Swapping without Temp variable <--
# --------------------------------------
# Before swapping : A=100 B=426
#  After swapping : A=426 B=100
# ------------------------------
# ------------------------------------
# --> Swapping using XOR Opreation <--
# ------------------------------------
# Before swapping : A=799 B=826
#  After swapping : A=826 B=799
# ------------------------------
# ------------------------------------
# --> Swapping using Concatination <--
# ------------------------------------
# Before swapping : A=110 B=221
#  After swapping : A=221 B=110
# ------------------------------
# -------------------------------------------
# --> Swapping by Non-Blocking Statements <--
# -------------------------------------------
# Before swapping : A=100 B=426
#  After swapping : A=426 B=100
# ------------------------------
# ----------------------------------------
# --> Swapping using Pos Edge of Clock <--
# ----------------------------------------
#  After swapping : A=545 B=369
# ------------------------------
#  After swapping : A=369 B=545
# ------------------------------
#  After swapping : A=545 B=369
# ------------------------------
#  After swapping : A=369 B=545
# ------------------------------
#  After swapping : A=545 B=369
# ------------------------------
*/
