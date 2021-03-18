module n_eight_bit_tb();
reg [7:0] a1;
wire [7:0] a2;
n_eight_bit DUT(.a(a1),.c(a2));
integer i;
initial
	begin
	{a1,a2} = 0;
	end
initial
		begin
			for(i=0;i<512;i=i+1)
				begin
				{a1} = i;
				#10;
				end
		end
initial 
	$monitor("input a1=%b,output a2=%b",a1,a2);
initial
	#100 $finish;
endmodule