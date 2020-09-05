//Módulo FlipFlop
module FlipD(input wire CLK,input wire [2:0]D, input wire reset, input wire set, output [2:0]Q);
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
module MEF2 (input wire A, input wire C,input wire R,input wire S, output wire [2:0]Y);
	wire [2:0]D;
	wire [2:0]Q;
	FlipD U1(C,D,R,S,Q);
	//tabla de transiciones
	assign D[2] = (~Q[2]&Q[1]&Q[0]&A)|(~Q[2]&~Q[1]&~Q[0]&~A)|(Q[2]&~Q[1]&Q[0])|(Q[2]&~Q[0]&A)|(Q[2]&Q[1]&~A);
	assign D[1] = (~Q[1]&Q[0]&A)|(Q[1]&~Q[0]&A)|(Q[1]&Q[0]&~A)|(~Q[1]&~Q[0]&~A);
	assign D[0] = ~Q[0]; 
	//tabla de salidas
	assign Y[2] = Q[2];
	assign Y[1] = (~Q[2]&Q[1])|(Q[2]&~Q[1]);
	assign Y[0] = (Q[1]&~Q[0])|(~Q[1]&Q[0]);
endmodule
	