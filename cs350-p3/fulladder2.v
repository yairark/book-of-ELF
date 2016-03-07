module full_adder
(in_x, in_y, carry_in, sum_out,
carry_out);
 
input  in_x;
input  in_y;
input  carry_in;
output sum_out;
output carry_out;

wire w_sum1;
wire w_carry1;
wire w_carry2;

assign carry_out = w_carry1 | w_carry2;

// Instantiate two half-adders to make the circuit. Click here for half-adder rtl

half_adder u1_half_adder
(
.in_x(in_x),
.in_y(in_y),
.out_sum(w_sum1),
.out_carry(w_carry1)
);                    
half_adder u2_half_adder
(
.in_x(w_sum1),
.in_y(carry_in),
.out_sum(sum_out),
.out_carry(w_carry2)
);               
endmodule
