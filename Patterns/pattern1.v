//--> Pattern Printing
module pattern1;
	integer i,j;
	initial begin
	for(i=5;i>0;i=i-1)begin
		for(j=i;j>0;j=j-1)begin
			$write("*");
		end
		$display("");
	end
	end
endmodule

/* Output:=
# *****
# ****
# ***
# **
# *
*/

module pattern2;
	integer i,j;
	initial begin
	for(i=0;i<5;i=i+1)begin
		for(j=0;j<=i;j=j+1)begin
			$write("*");
		end
		$display("");
	end
	end
endmodule
/* Output:
# *
# **
# ***
# ****
# *****
*/


module pattern3;
	integer n;
	integer sp;
	integer str=1;
	integer i,j,k;
	initial begin
		$value$plusargs("n=%0d",n);
		sp=n-1;

	for(k=0;k<n;k=k+1)begin
		for(i=0;i<sp;i=i+1) $write(" ");
		for(j=0;j<str;j=j+1) $write("* ");
		sp=sp-1;
		str=str+1;
		$display("");
	end
	end
endmodule
/* 
#               * 
#              * * 
#             * * * 
#            * * * * 
#           * * * * * 
#          * * * * * * 
#         * * * * * * * 
#        * * * * * * * * 
#       * * * * * * * * * 
#      * * * * * * * * * * 
#     * * * * * * * * * * * 
#    * * * * * * * * * * * * 
#   * * * * * * * * * * * * * 
#  * * * * * * * * * * * * * * 
# * * * * * * * * * * * * * * * 
*/

module pattern4;
	integer n;
	integer sp;
	integer str=1;
	integer i,j,k;
	initial begin
		$value$plusargs("n=%0d",n);
		sp=n-1;

	for(k=0;k<n;k=k+1)begin
		for(i=0;i<sp;i=i+1) $write(" ");
		for(j=0;j<str;j=j+1) $write("*");
		//sp=sp-1;
		//str=str+2;
		if(k<n/2)begin
			sp=sp-1;
			str=str+2;	
		end
		else begin
			sp=sp+1;
			str=str-2;
		end
		$display("");
	end
	end
endmodule
/* Output:-
#               *
#              ***
#             *****
#            *******
#           *********
#          ***********
#         *************
#        ***************
#         *************
#          ***********
#           *********
#            *******
#             *****
#              ***
#               *              
*/
module pattern5;
	integer n,star,space=0,i,k,j;
	initial begin
		$value$plusargs("n=%0d",n);
		star=n;
		//space=0;

		for(k=0;k<n;k=k+1)begin
			for(j=0;j<space;j=j+1) $write(" ");
			for(i=0;i<star;i=i+1) $write("*");
			if(k<n/2)space=space+1;	
			else space=space-1;
			$display("");
		end
	end
endmodule
/* Output:-
# ***************
#  ***************
#   ***************
#    ***************
#     ***************
#      ***************
#       ***************
#        ***************
#       ***************
#      ***************
#     ***************
#    ***************
#   ***************
#  ***************
# ***************
*/

module pattern6;
	integer n,i,j;
	initial begin
		$value$plusargs("n=%0d",n);
		for(i=0;i<n;i=i+1)begin
			for(j=0;j<n;j=j+1) begin
				if(i==0 || j==0 || i==n-1 || i==j || j==n-i-1 || j==n-1) $write("*");
				else $write(" ");
			end
			$display("");
		end
	end
endmodule
/* Output:-
 ***************
 **           **
 * *         * *
 *  *       *  *
 *   *     *   *
 *    *   *    *
 *     * *     *
 *      *      *
 *     * *     *
 *    *   *    *
 *   *     *   *
 *  *       *  *
 * *         * *
 **           **
 ***************
*/
module pattern7;
	
endmodule
