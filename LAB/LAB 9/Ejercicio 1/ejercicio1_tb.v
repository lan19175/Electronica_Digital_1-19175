module Ejercicio_1();

  reg Clk, reset, D1, enable; reg [1:0]D2; reg [3:0]D4; 
  wire Q1; wire [1:0]Q2; wire [3:0]Q4;

//Variables para módulo
	FlipD1 U1(Clk, D1, reset, enable, Q1);
	FlipD2 U2(Clk, D2, reset, enable, Q2);
	FlipD4 U3(Clk, D4, reset, enable, Q4);


//Prueba para FLipFlop de 1 bit
initial begin
	Clk=0;
	forever #5 Clk = ~Clk;
end
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 1, FlipFlop D 1 bit");
    $display("Clk E D | Q");
    $display("------------");
    $monitor("%b   %b %b | %b", Clk, enable, D1, Q1);
	//es escogieron números aleatorios para A
       reset = 1; D1 = 1; enable = 0;
    #1 reset = 0;
	#10 D1 = 1;
	#10 enable = 1;
	#15 D1 = 0;
  end


//Prueba para FLipFlop de 2 bit
  initial begin
	#60
    $display("\n");
	$display("Ejercicio 1, FlipFlop D 2 bits");
    $display("Clk E  D | Q");
    $display("-------------");
    $monitor("%b   %b %b |%b", Clk, enable, D2, Q2);
	//es escogieron números aleatorios para A
       reset = 1; D2 = 1;
    #1 reset = 0;
	#5 enable = 1;
	#10 D2 = 2;
	#10 D2 = 3;
  end
 
 
//Prueba para FLipFlop de 4 bit
  initial begin
	#105
    $display("\n");
	$display("Ejercicio 1, FlipFlop D 4 bits");
    $display("Clk E  D   |  Q");
    $display("-----------------");
    $monitor("%b   %b %b | %b", Clk, enable, D4, Q4);
	//es escogieron números aleatorios para A
       reset = 1; D4 = 1;
    #1 reset = 0;
	#5 enable = 1;
	#10 D4 = 2;
	#10 D4 = 3;
	#10 D4 = 10;
  end


	initial
    #150 $finish;
  initial begin
    $dumpfile("ejercicio1_tb.vcd");
    $dumpvars(0, Ejercicio_1);
  end
endmodule