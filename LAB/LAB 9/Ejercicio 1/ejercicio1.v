//Ejercicio 1

//Modulo FlipFlopD de 1 bit
module FlipD1(input wire CLK, input wire D, input wire reset, input wire enable, output Q);
reg Q;
	always @(posedge CLK or	posedge reset or posedge enable)
		if (reset)begin
		Q <= 0;
	end else if(enable) begin
		Q <= D;
	end
endmodule


//Modulo FlipFlopD de 2 bit
module FlipD2 (input wire CLK, input wire [1:0]D, input wire reset, input wire enable, output wire [1:0]Q);
	FlipD1 O0(CLK, D[0], reset, enable, Q[0]);
	FlipD1 O1(CLK, D[1], reset, enable, Q[1]);
endmodule


//Modulo FlipFlopD de 4 bitsx
module FlipD4 (input wire CLK, input wire [3:0]D, input wire reset, input wire enable, output wire [3:0]Q);
	FlipD2 O3(CLK, D[1:0], reset, enable, Q[1:0]);
	FlipD2 O4(CLK, D[3:2], reset, enable, Q[3:2]);
endmodule

