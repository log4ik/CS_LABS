module Lohovskyi_lab4(
  input wire x1,x2,x3,
  output wire f1,f2
);
  // ?-??/?-??
assign f1 = ~((~x1) & (~(~x3 & ~x2)));
  // ???/?-??
assign f2 = ~((~x1) & (x3 | x2));
endmodule