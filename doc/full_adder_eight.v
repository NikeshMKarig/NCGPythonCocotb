module full_adder_eight(a,b,cin,sum,c_out);
input [7:0] a,b;
input cin;
output [7:0] sum;
output c_out;
wire c0,c1,c2,c3,c4,c5,c6;
full_adder FA1(.a_in(a[0]),.b_in(b[0]),.c_in(cin),.sum_out(sum[0]),.carry_out(c0));
full_adder FA2(.a_in(a[1]),.b_in(b[1]),.c_in(c0),.sum_out(sum[1]),.carry_out(c1));
full_adder FA3(.a_in(a[2]),.b_in(b[2]),.c_in(c1),.sum_out(sum[2]),.carry_out(c2));
full_adder FA4(.a_in(a[3]),.b_in(b[3]),.c_in(c2),.sum_out(sum[3]),.carry_out(c3));
full_adder FA5(.a_in(a[4]),.b_in(b[4]),.c_in(c3),.sum_out(sum[4]),.carry_out(c4));
full_adder FA6(.a_in(a[5]),.b_in(b[5]),.c_in(c4),.sum_out(sum[5]),.carry_out(c5));
full_adder FA7(.a_in(a[6]),.b_in(b[6]),.c_in(c5),.sum_out(sum[6]),.carry_out(c6));
full_adder FA8(.a_in(a[7]),.b_in(b[7]),.c_in(c6),.sum_out(sum[7]),.carry_out(c_out));
endmodule