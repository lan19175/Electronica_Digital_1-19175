//Ejercicio 4


//modulo Buffer Tri-estado
module BufTri(input wire enable, input wire [3:0]IN, output wire [3:0]OUT);
	assign OUT = enable ? IN : 4'bz;
endmodule
