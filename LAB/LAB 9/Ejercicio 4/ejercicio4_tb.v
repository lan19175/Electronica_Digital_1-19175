module Ejercicio_4();

  reg [3:0]IN; reg enable; 
  wire [3:0]OUT; 

//Variables para módulo
	BufTri U4(enable, IN, OUT);


//Prueba para Buffer
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 4");
    $display("E IN | OUT");
    $display("-----------------");
    $monitor("%b %b | %b", enable, IN, OUT);
       enable = 0; IN = 1;
    #1 enable = 1;
	#10 enable = 0;
	#5 IN = 5;
	#5 IN = 15;
	#5 enable = 1;
	#5 IN = 3;
	#5 IN = 6;
	#5 enable = 0;

  end

	initial
    #50 $finish;
  initial begin
    $dumpfile("ejercicio4_tb.vcd");
    $dumpvars(0, Ejercicio_4);
  end
endmodule