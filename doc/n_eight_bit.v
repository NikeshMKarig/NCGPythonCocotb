module n_eight_bit(a,c,clk,reset,req,en,clear,up_down);
input clk,reset,req,en,clear,up_down;
input [7:0] a;
output [7:0] c;
wire [7:0] b1,b2,b3,b4,b5,b6,b7,b8;
wire [7:0]cnt;
always @(posedge clk)
	begin
	if(!clear)
	cnt<=8'h00;
	else if(load)
		cnt<=a;
	else if(up_down)
		cnt=cnt+1;
	else
		cnt=cnt-1;
	end
assign c=cnt;
if(cnt==c)
	req=1;
	en=1;
always @(posedge clk or posedge reset)
begin
	if(reset)
		a=0;
	else
		for(int i=0;int i<7;int i++)
		if(i==7)
			full_adder_eight FAE1(.cout(b1));
			full_adder_eight FAE2(.cout(b2));
			full_adder_eight FAE3(.cout(b3));
			full_adder_eight FAE4(.cout(b4));
			full_adder_eight FAE5(.cout(b5));
			full_adder_eight FAE6(.cout(b6));
			full_adder_eight FAE7(.cout(b7));
			full_adder_eight FAE8(.cout(b8));
		c= b1+b2+b3+b4+b5+b6+b7+b8;
end

		

