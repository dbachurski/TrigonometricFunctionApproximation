// quadra.vh

`ifndef QUADRA_VH
`define QUADRA_VH

typedef logic ck_t; // clock
typedef logic rs_t; // reset
typedef logic dv_t; // data valid

// --------------------------------------------------------------------------------
// I/O precision
// --------------------------------------------------------------------------------

// x in [0,2) -> u1.23
localparam int  X_I =  1;          //         =  1
localparam int  X_F = 23;          //         = 23
localparam int  X_W = X_I + X_F;   //  1 + 23 = 24 (u1.23)

typedef logic [X_W-1:0] x_t;

// y [-2,2) -> s2.23
localparam int  Y_I =  2;          //         =  2
localparam int  Y_F = 23;          //         = 23
localparam int  Y_W = Y_I + Y_F;   //  2 + 23 = 25 (s2.23)

typedef logic signed [Y_W-1:0] y_t;

// --------------------------------------------------------------------------------
// Internal precision:
// --------------------------------------------------------------------------------

// u1.6
typedef logic [6:0]  x1_t;

// u(-6).23
typedef logic [16:0] x2_t;

// u(-5).23 + sign bit -> s(-5).23
typedef logic signed [17:0] sx2_t;

// s(-5).23 * s(-5).23 -> u(-10).46
typedef logic signed [33:0] sq_t;

// x2 * b
// s(-5).23 * s2.16 -> s(-3).39
typedef logic signed [35:0] mult1_t;

// sq * c
// s(-10).46 * s2.11 -> s(-8).57
typedef logic signed [48:0] mult2_t;

// mult1 + mult2 + a
// s1.57 + 1 extension bit -> s2.57
typedef logic signed [58:0] sum_t;

// a in (-1,1) -> s1.22
localparam int  A_I = 1;           //         = 1
localparam int  A_F = 22;          //         = 22
localparam int  A_W = A_I + A_F;   //  1 + 22 = 8 (s1.22)

typedef logic signed [A_W-1:0] a_t;

// b in (-2,2) -> s2.16
localparam int  B_I = 2;           //         = 2
localparam int  B_F = 16;          //         = 16
localparam int  B_W = A_I + A_F;   //  2 + 16 = 8 (s2.16)

typedef logic signed [B_W-1:0] b_t;

// c in (-2,2) -> s2.11
localparam int  C_I = 2;           //         = 2
localparam int  C_F = 11;          //         = 11
localparam int  C_W = C_I + C_F;   //  2 + 11 = 8 (s2.11)

typedef logic signed [C_W-1:0] c_t;

`endif
