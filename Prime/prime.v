module top;
	integer num;
	integer j,i;
	reg valid;

	initial begin
		$value$plusargs("num=%0d",num);
		$display("The Prime Numbers upto %0d are :-",num);
		for(i=2;i<=num;i=i+1)begin
			valid=1;
			for(j=2;j<=i**0.5;j=j+1) begin
					if(i%j==0) valid=0;
			end
			if(valid==1) $display("\t---->> %0d",i);
		end
	end
endmodule

/* Output:
# vsim top "+num=100" 
# The Prime Numbers upto 100 are :-
# 	---->> 2
# 	---->> 3
# 	---->> 5
# 	---->> 7
# 	---->> 11
# 	---->> 13
# 	---->> 17
# 	---->> 19
# 	---->> 23
# 	---->> 29
# 	---->> 31
# 	---->> 37
# 	---->> 41
# 	---->> 43
# 	---->> 47
# 	---->> 53
# 	---->> 59
# 	---->> 61
# 	---->> 67
# 	---->> 71
# 	---->> 73
# 	---->> 79
# 	---->> 83
# 	---->> 89
# 	---->> 97
*/

