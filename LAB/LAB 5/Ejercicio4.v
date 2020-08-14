

//módulo Mux 2:1
module Mux21(input logic D0, D1, S0, output wire Y);
	
	assign Y = S0 ? D1 : D0;
	
endmodule


//módulo Mux 4:1
module Mux41(input logic D0, D1, D2, D3, S0, S1, output wire Y);
	
	wire Y1, Y2;
	Mux21 E1(D0, D1, S1, Y1);
	Mux21 E3(D2, D3, S1, Y2);
	Mux21 E2(Y1, Y2 , S0, Y);
	
endmodule


//módulo Mux 8:1
module Mux81(input logic D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, output wire Y);

	wire Y1, Y2;
	Mux41 H1(D0, D1, D2, D3, S2, S1, Y1);
	Mux41 H2(D4, D5, D6, D7, S2, S1, Y2);
	Mux21 H3(Y1, Y2, S0, Y);
	
endmodule


//Tabla1 Mux 2:1
module Tabla1Mux21(input wire A, B, C, output wire Y);
	
	Mux21 U12(B^C,B~^C, A, Y);
	
endmodule


//Tabla 1 Mux 4:1
module Tabla1Mux41(input wire A, B, C, output wire Y);

	Mux41 U14(C, ~C, ~C, C, A, B, Y);
	
endmodule


//Tabla 1 Mux 8:1
module Tabla1Mux81(input wire A, B, C, output wire Y);

	wire V, T;
	assign V = 1;
	assign T = 0;
	Mux81 U18(T, V, V, T, V, T, T, V, A, B, C, Y);
	
endmodule


//Tabla2 Mux 2:1
module Tabla2Mux21(input wire A, B, C, output wire Y);
	
	Mux21 N12(~(B|C), ~(B&C), A, Y);
	
endmodule


//Tabla 2 Mux 4:1
module Tabla2Mux41(input wire A, B, C, output wire Y);

	Mux41 N14(~C, ~C&C, ~C|C, ~C, A, B, Y);
	
endmodule


//Tabla 2 Mux 8:1
module Tabla2Mux81(input wire A, B, C, output wire Y);

	wire V, T;
	assign V = 1;
	assign T = 0;
	Mux81 N18(V, T, T, T, V, V, V, T, A, B, C, Y);
	
endmodule




