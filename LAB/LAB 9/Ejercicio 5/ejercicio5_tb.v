module Ejercicio_5();

  reg [6:0]ADD;  
  wire [12:0]OUT; 

//Variables para módulo
	MemRom U1(ADD, OUT);


//Prueba para memora ROM
  initial begin
	#3
    $display("\n");
	$display("Ejercicio 5");
    $display("   ADD     |      OUT");
    $display("------------------------");
    $monitor("%b | %b", ADD, OUT);
	//es escogieron números aleatorios para A
       ADD = 7'b0000000;
    #1 ADD = 7'b1111110;
	#1 ADD = 7'b0110110;
	#1 ADD = 7'b0101110;
	#1 ADD = 7'b1111110;
	#1 ADD = 7'b0000101;
	#1 ADD = 7'b0000001;
	#1 ADD = 7'b0001101;
	#1 ADD = 7'b0001001;
	#1 ADD = 7'b0010001;
	#1 ADD = 7'b0011001;
	#1 ADD = 7'b0100001;
	#1 ADD = 7'b0101001;
	#1 ADD = 7'b0110001;
	#1 ADD = 7'b0111001;
	#1 ADD = 7'b1000011;
	#1 ADD = 7'b1000001;
	#1 ADD = 7'b1001011;
	#1 ADD = 7'b1001001;
	#1 ADD = 7'b1010001;
	#1 ADD = 7'b1011001;
	#1 ADD = 7'b1100001;
	#1 ADD = 7'b1101001;
	#1 ADD = 7'b1110001;
	#1 ADD = 7'b1111001;
	#1 ADD = 7'b1011011;
	#1 ADD = 7'b1011101;
	#1 ADD = 7'b1011111;

  end

	initial
    #30 $finish;
  initial begin
    $dumpfile("ejercicio5_tb.vcd");
    $dumpvars(0, Ejercicio_5);
  end
endmodule