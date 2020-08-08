 

// Ecuación a implementar: Y = AB'C' + AB'C + ABC
module SOPG(input wire A, B, C, output wire Y);
//Outputs de gates
  wire NB, NC, A1, A2, A3;
//programación gates
  not (NB, B);
  not (NC, C);
  and (A1, A, NB, NC);
  and (A2, A, NB, C);
  and (A3, A, B, C);
  or  (Y, A1, A2, A3);

endmodule


// Ecuación a implementar: Y = (A+B+C)*(A+B+C')*(A+B'+C)*(A+B'+C')*(A'+B'+C)
module POSG(input wire A, B, C, output wire Y);
//output de gates
  wire NA, NB, NC, O1, O2, O3, O4, O5;
//programación de gates
  not (NA, A);
  not (NB, B);
  not (NC, C);
  or  (O1, A, B, C);
  or  (O2, A, B, NC);
  or  (O3, A, NB, C);
  or  (O4, A, NB, NC);
  or  (O5, NA, NB, C);
  and (Y, O1, O2, O3, O4, O5);

endmodule


// Ecuación a implementar: Y = AB' + AC
module MapaKarG(input wire A, B, C, output wire Y);
//output de gates
  wire NB, A1, A2;
//programación de gates
  not (NB, B);
  and (A1, A, NB);
  and (A2, A, C);
  or  (Y, A1, A2);

endmodule



//Cominezo progra utilizando operadores lógicos

//Ecuación a implementar: AB'C' + AB'C + ABC
module SOPO(input wire A, B, C, output wire Y);

  assign Y = (A&~B&~C)|(A&~B&C)|(A&B&C);

endmodule


//Ecuación a implementar: (A+B+C)*(A+B+C')*(A+B'+C)*(A+B'+C')*(A'+B'+C)
module POSO(input wire A, B, C, output wire Y);

  assign Y = (A|B|C)&(A|B|~C)&(A|~B|C)&(A|~B|~C)&(~A|~B|C);

endmodule


//Ecuación a implementar: AB' + AC
module MapaKarO(input wire A, B, C, output wire Y);

  assign Y = (A&~B)|(A&C);

endmodule




