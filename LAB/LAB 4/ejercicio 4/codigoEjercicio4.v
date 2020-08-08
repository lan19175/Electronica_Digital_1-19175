 

// Ecuación a implementar: Y = AB' + AC' + AD' + B'C'D'
module Ejer2Tabla1(input wire A, B, C, D, output wire Y);
//Outputs de gates
  wire NB, NC, ND, A1, A2, A3, A4;
//programación gates
  not (NB, B);
  not (NC, C);
  not (ND, D);
  and (A1, A, NB);
  and (A2, A, NC);
  and (A3, A, ND);
  and (A4, NB, NC, ND);
  or  (Y, A1, A2, A3, A4);

endmodule


// Ecuación a implementar: Y = C + B'
module Ejer2Tabla2(input wire A, B, C, output wire Y);
//output de gates
  wire NB;
//programación de gates
  not (NB, B);
  or  (Y, NB, C);

endmodule


// Ecuación a implementar: Y = B + C'D + AD
module Ejer2Tabla3(input wire A, B, C, D, output wire Y);
//output de gates
  wire NC, A1, A2;
//programación de gates
  not (NC, C);
  and (A1, NC, D);
  and (A2, A, D);
  or  (Y, A1, A2, B);

endmodule


// Ecuación a implementar: Y = A'C' + B
module Ejer2Tabla4(input wire A, B, C, output wire Y);
//output de gates
  wire NA, NC, A1;
//programación de gates
  not (NA, A);
  not (NC, C);
  and (A1, NA, NC);
  or  (Y, A1, B);

endmodule


//Cominezo progra utilizando operadores lógicos

//Ecuación a implementar: AC + AB' +A'C'
module Ejer1Tabla1(input wire A, B, C, output wire Y);

  assign Y = (A&C)|(A&~B)|(~A&~C);

endmodule


//Ecuación a implementar: B'
module Ejer1Tabla2(input wire A, B, C, output wire Y);

  assign Y = ~B;

endmodule


//Ecuación a implementar: A'B'C'D' + ABC'D' + A'BC'D + AB'C'D + A'B'CD + ABCD + A'BCD' + AB'CD'
module Ejer1Tabla3(input wire A, B, C, D, output wire Y);

  assign Y = (~A&~B&~C&~D)|(A&B&~C&~D)|(~A&B&~C&D)|(A&~B&~C&D)|(~A&~B&C&D)|(A&B&C&D)|(~A&B&C&~D)|(A&~B&C&~D);

endmodule


//Ecuación a implementar: AB + AC+ AD'
module Ejer1Tabla4(input wire A, B, C, D, output wire Y);

  assign Y = (A&B)|(A&C)|(A&~D);

endmodule


