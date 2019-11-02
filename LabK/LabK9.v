/* Meet Patel		214304869 */
module labK;
reg a, b, cin;
integer i, j, k;
reg [1:0] expect;
wire z, cout, abxor, aband, abxorcinand;

 xor my_xor(abxor, b, a);
 and my_and(aband, a, b);
 and my_and(abxorcinand, cin, abxor);
 xor my_xor(z, cin, abxor);
 or my_or(cout, abxorcinand, aband);

initial
begin
for(i = 0; i < 2; i = i+1)
begin
  for(j = 0; j < 2; j = j+1)
  begin
    for(k = 0; k < 2; k = k+1)
    begin
  a = i;
  b = j;
  cin = k;
  expect[0] = (a ^ b) ^ cin;
  expect[1] = (a & b) | ((a ^ b) & cin);
  #1 if(expect[0] === z && expect[1] === cout)

  #2 $display("PASS: a=%b b=%b cin=%b z=%b cout=%b", a, b, cin, z, cout);

  else
  #2 $display("FAIL: a=%b b=%b cin=%b z=%b cout=%b", a, b, cin, z, cout);

    end
  end
end

$finish;
end
endmodule
