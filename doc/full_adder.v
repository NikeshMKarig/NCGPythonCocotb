module full_adder(input ain,bin,cin,output sum, cout);
	assign sum = ain^bin^cin;
	assign cout = (ain&bin)|(ain&cin)|bin&cin);
endmodule