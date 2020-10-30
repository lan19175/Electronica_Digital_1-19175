module Ejercicio_3();

  reg Clk, reset, enable, K, J; 
  wire QJK; 

//Variables para módulo
	FlipJK U4(Clk, reset, enable, J, K, QJK);


initial begin
	Clk=0;
	forever #5 Clk = ~Clk;
end


//Prueba para FLipJK
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 2");
    $display("Clk J K |  Q");
    $display("-----------------");
    $monitor("%b   %b %b | %b", Clk, J, K, QJK);
       reset = 1; enable = 0; J = 0; K = 0;
    #1 reset = 0; enable = 1;
	#10 J = 1;
	#15 J = 0; K = 1;
	#15 J = 1;

  end

	initial
    #70 $finish;
  initial begin
    $dumpfile("ejercicio3_tb.vcd");
    $dumpvars(0, Ejercicio_3);
  end
endmodule