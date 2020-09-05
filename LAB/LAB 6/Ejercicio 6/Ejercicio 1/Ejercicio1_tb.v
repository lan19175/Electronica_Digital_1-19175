module testbench();

  reg A, B, CLK, reset, set;
  reg [1:0]E; 
  wire Y;

//Aeclaración Gate Level MoAelling
	MEF1 U1(A, B, CLK, reset, set, Y);


//Gate Level MoAelling
//Ejercicio 2 Tabla 1
initial begin
	CLK=0;
	forever #1 CLK = ~CLK;
end
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 1");
    $display("CLK A B Y Estado");
    $display("------------");
    $monitor("  %b  %b %b %b S%d", CLK, A, B, Y, E);
       reset = 1; A = 0; B = 0; set = 0; E=0;
    #1 reset = 0; A = 0; B = 0; E=0;
    #1 reset = 0; A = 0; B = 0; E=0;
	#1 reset = 0; A = 1; B = 0; E=0;
	#1 reset = 0; A = 1; B = 0; E=1;
	#1 reset = 0; A = 1; B = 0; E=1;
	#1 reset = 0; A = 1; B = 0; E=0;
	#1 reset = 0; A = 1; B = 0; E=0;
	#1 reset = 0; A = 1; B = 1; E=1;
	#1 reset = 0; A = 1; B = 1; E=1;
	#1 reset = 0; A = 1; B = 1; E= 2;
	#1 reset = 0; A = 1; B = 1; E= 2;
	#1 reset = 0; A = 1; B = 0; E=0;
	#1 reset = 0; A = 0; B = 0; E=0;
	#1 reset = 0; A = 0; B = 0; E=0;
	#1 reset = 0; A = 0; B = 0; E=0;
  end
	initial
    #20 $finish;
  initial begin
    $dumpfile("Ejercicio1_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule