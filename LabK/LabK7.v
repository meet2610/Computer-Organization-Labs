/* Meet Patel		214304869 */

module labK;
reg a, b, c, flag;
wire tmp, tmp2, tmp3, z, t, t2, t3;
integer i, j;
not my_not(tmp, c);
and my_and(tmp2, a, t);
and my_and(tmp3, a, b);
or my_or(z, t2, t3);

assign t = tmp;
assign t2 = tmp2;
assign t3 = tmp3;

initial
begin
flag = $value$plusargs("a=%b", a);
if(flag === "")
#2 $display("ERROR, forgot to input value for a");
flag = $value$plusargs("b=%b", b);
if(flag === "")
#2 $display("ERROR, forgot to input value for b");
flag = $value$plusargs("c=%b", c);
if(flag === "")
#2 $display("ERROR, forgot to input value for c");

#2 $display("a=%b b=%b c=%b z=%b", a, b, c, z);

 $finish;
end
endmodule
