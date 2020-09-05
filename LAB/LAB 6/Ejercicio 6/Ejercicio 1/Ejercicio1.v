//modulo FLipFLop
module FlipD(input logic CLK, input logic [1:0]D, input logic reset, input logic set, output [1:0]Q);
reg Q;
	always @(posedge CLK or	posedge reset)
		if (reset)begin
		Q <= 2'b00;
	end else if (set)begin
		Q <= 2'b11;
	end else begin
		Q <= D;
	end
endmodule
//ejercicio 1
module MEF1 (input wire A, B, input logic C, R, S, output Y);
	output [1:0]D;
	output [1:0]Q;
	FlipD U1(C,D,R,S,Q);
	assign D[0] = A&~Q[0]&~Q[1];
	assign D[1] = (A&B&Q[1])|(Q[0]&B);
	assign Y = Q[1]&A&B;
endmodule