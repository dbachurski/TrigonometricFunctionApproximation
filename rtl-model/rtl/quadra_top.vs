`include "quadra.vh"

module quadra_top
(
    input  ck_t clk,
    input  rs_t rst_b,
    input  x_t  x,
    input  dv_t x_dv,
    output y_t  y,
    output dv_t y_dv
);


/* Local Signals */

x1_t  x_m;
x2_t  x_l;

dv_t  dv_p0, dv_p1, dv_p2;


/* Signal assigments */

assign x_m = x[23:17];
assign x_l = x[16:0];


/* Module Instances */

quadra u_quadra (
    .clk,
    .rst_b,
    .x_m,
    .x_l,
    .x_dv,
    .dv_p0,
    .y
);


/* Internal logic */

always_ff @(posedge clk) begin
    if (!rst_b) begin
        dv_p0 <= '0;
        dv_p1 <= '0;
        dv_p2 <= '0;
    end
    else begin
        dv_p0 <= x_dv;
        dv_p1 <= dv_p0;
        dv_p2 <= dv_p1;
    end
end

// Outputs:
always_comb y_dv = dv_p2;

endmodule
