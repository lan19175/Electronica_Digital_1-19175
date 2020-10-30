//Ejercicio 2

module FlipD1(input wire CLK, input wire D, input wire reset, input wire enable, output Q);
reg Q;
	always @(posedge CLK or	posedge reset)
		if (reset)begin
		Q <= 0;
	end else if(enable) begin
		Q <= D;
	end
endmodule

//modulo FlipFlop T
module FlipT(input wire CLK, reset, enable, output wire Q);
	FlipD1 O5(CLK, ~Q, reset, enable, Q);
endmodule
