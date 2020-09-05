module testbench();

  reg A, CLK, reset, set;
  reg [2:0]E; 
  wire [2:0]Y;

//declaracion variables a utilizar
	MEF2 U1(A, CLK, reset, set,Y);



//creación de cambio entre 1 y 0 para el CLK
initial begin
	CLK=0;
	forever #1 CLK = ~CLK;
	
end
//prueba de la maquina
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 1");
    $display("CLK A Y Estado");
    $display("---------------");
    $monitor("  %b  %b %b S%d", CLK, A, Y, E);
	reset =1; A = 1; set = 0; E=1;
    #1 reset = 0; A =1; E=1;
	#1 A = 1; E = 2;
	#1 A = 1; E = 2;
	#1 A = 1; E = 3;
	#1 A = 1; E = 3;
	#1 A = 1; E = 4;
	#1 A = 1; E = 4;
	#1 A = 1; E = 5;
	#1 A = 1; E = 5;
	#1 A = 1; E = 6;
	#1 A = 1; E = 6;
	#1 A = 1; E = 7;
	#1 A = 1; E = 7;
	#1 A = 1; E = 0;
	#1 A = 1; E = 0;
	#1 A = 0; E = 7;
	#1 A = 0; E = 7;
	#1 A = 0; E = 6;
	#1 A = 0; E = 6;
	#1 A = 0; E = 5;
	#1 A = 0; E = 5;
	#1 A = 0; E = 4;
	#1 A = 0; E = 4;
	#1 A = 0; E = 3;
	#1 A = 0; E = 3;
	#1 A = 0; E = 2;
	#1 A = 0; E = 2;
	#1 A = 0; E = 1;
	#1 A = 0; E = 1;
	#1 A = 0; E = 0;
	#1 A = 0; E = 0;
  end
	initial
    #33 $finish;
  initial begin
    $dumpfile("Ejercicio3_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule