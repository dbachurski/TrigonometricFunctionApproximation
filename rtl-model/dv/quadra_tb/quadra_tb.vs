//------------------------------------------------------------------------
//  FILENAME:  quadra_tb.vs
//  DESIGNER:  tjnagler
//  PROJECT:   Quadratic Approximation Unit
//  DATE:      2023-12-28
//  PURPOSE:   simple test bench for quadra_top.vs
//------------------------------------------------------------------------

`include "quadra.vh"

`timescale 1ps/1ps

`define T_CLK 1000 // clock period [ps]

module quadra_tb
(
);
    //----------------------------------------------------------------------------
    // Inputs:
    //----------------------------------------------------------------------------
    x_t  x;
    dv_t x_dv;

    // --------------------------------------------------------------------------------
    // Outputs:
    // --------------------------------------------------------------------------------
    y_t  y;
    dv_t y_dv;

    // --------------------------------------------------------------------------------
    // Internal clock and reset (VCS)
    // --------------------------------------------------------------------------------
    ck_t clk;
    rs_t rst_b;

    // --------------------------------------------------------------------------------
    // DUT:
    // --------------------------------------------------------------------------------
    quadra_top u0 (
        // inputs:
        .clk   (clk),
        .rst_b (rst_b),
        .x     (x),
        .x_dv  (x_dv),
        // output:
        .y     (y),
        .y_dv  (y_dv)
    );

    // --------------------------------------------------------------------------------

    initial
    begin: clock_init
        clk = 1'b0;
        forever #(`T_CLK/2) clk = ~clk;
    end

    initial
    begin: reset_init
        rst_b = 1'b1;
        repeat(2) @(posedge clk);
        rst_b = 1'b0;
        repeat(1) @(posedge clk);
        rst_b = 1'b1;
    end

    initial
    begin
        logic [63:0] temp;

        $display ("Started quadra_tb ...");

        x    = '0;
        x_dv = 1'b0;

        // flush pipeline:
        repeat (10) @(posedge clk);

        // generate x in the interval [0,2):

        x_dv = 1'b1;
        for (int i = 0; i < 1000; i++) begin
            temp = i * 64'hffffff;
            x = temp / 999;
            $display("Sample %0d: x = 0x%06h", i, x);
            @(posedge clk);
        end

        x    = '0;
        x_dv = 1'b0;

        repeat (10) @(posedge clk);

        $display("Simulation finished.");

        $finish;
    end

endmodule
