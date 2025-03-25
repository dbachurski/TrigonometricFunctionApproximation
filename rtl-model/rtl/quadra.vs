//
// Quadratic polynomial:  f(x) = a + b*x2 + c*(x2^2)
//

`include "quadra.vh"

module quadra
(
    input  ck_t clk,
    input  rs_t rst_b,
    input  x1_t x_m,
    input  x2_t x_l,
    input  dv_t x_dv,
    input  dv_t dv_p0,
    output y_t  y
);


/* Local Signals */

mult1_t mult1, mult1_nxt;
mult2_t mult2, mult2_nxt;
sum_t   sum, sum_nxt;
sx2_t   sx_l;
sq_t    sq;
a_t     a, a_nxt;
b_t     b;
c_t     c;


/* Module Instances */

lut u_lut (
    .x_m,
    .a(a_nxt),
    .b,
    .c
);

square u_square (
    .x2(sx_l),
    .sq
);


/* Signals assigments */

assign sx_l = x_l;


/* Internal logic */

/* Pipeline Stage 1 */

always_ff @(posedge clk) begin
    if (!rst_b) begin
        mult1 <= 36'sb0;
        mult2 <= 49'sb0;
    end
    else begin
        mult1 <= mult1_nxt;
        mult2 <= mult2_nxt;
    end
end

always_comb begin
    mult1_nxt = 36'sb0;
    mult2_nxt = 49'sb0;

    if (x_dv) begin
        mult1_nxt = sx_l * b;
        mult2_nxt = sq * c;
    end
end

/* Pipeline Stage 2 */

always_ff @(posedge clk) begin
    if (!rst_b) begin
        sum <= 57'sb0;
        a <= 23'sb0;
    end
    else begin
        sum <= sum_nxt;
        a <= a_nxt;
    end
end

always_comb begin
    sum_nxt = 57'sb0;

    if (dv_p0) begin
        sum_nxt = {{5{mult1[35]}}, mult1, {18{1'sb0}}}
        + {{10{mult2[48]}}, mult2}
        + {{1{a[22]}}, a, {35{1'sb0}}};
    end
end

/* Pipeline Stage 3 */

always_ff @(posedge clk) begin
    if (!rst_b) begin
        y <= 25'sb0;
    end
    else begin
        y <= sum[58:34];
    end
end

endmodule
