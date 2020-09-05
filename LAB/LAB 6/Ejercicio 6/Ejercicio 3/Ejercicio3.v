´//Módulo FlipFlop
module FlipD(input logic CLK, input logic [2:0]D, input logic reset, input logic set, output [2:0]Q);
reg Q;
	always @(posedge CLK or	posedge reset)
		if (reset)begin
		Q <= 3'b000;
	end else if (set)begin
		Q <= 3'b111;
	end else begin
		Q <= D;
	end
endmodule
//Ejercicio 3
module MEF2 (input wire A, input logic C, R, S, output [2:0]Y);
	output [2:0]D;
	output [2:0]Q;
	FlipD U1(C,D,R,S,Q);
	//tabla de transiciones
	assign D[2] = (~Q[2]&Q[1]&Q[0]&A)|(~Q[2]&~Q[1]&~Q[0]&~A)|(Q[2]&~Q[1]&Q[0])|(Q[2]&~Q[0]&A)|(Q[2]&Q[1]&~A);
	assign D[1] = (~Q[1]&Q[0]&A)|(Q[1]&~Q[0]&A)|(Q[1]&Q[0]&~A)|(~Q[1]&~Q[0]&~A);
	assign D[0] = ~Q[0]; 
	//tabla de salidas
	assign Y[2] = D[2];
	assign Y[1] = (~D[2]&D[1])|(D[2]&~D[1]);
	assign Y[0] = (D[1]&~D[0])|(~D[1]&D[0]);
endmodule
	