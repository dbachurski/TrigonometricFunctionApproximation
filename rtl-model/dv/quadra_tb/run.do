vlog -sv -timescale 1ns/1ns -incdir ../../rtl \
    ../../rtl/quadra.vh \
    ../../rtl/quadra_top.vs \
    ../../rtl/quadra.vs \
    ../../rtl/lut.vs \
    ../../rtl/square.vs \
    quadra_tb.vs

vsim -voptargs="+acc" quadra_tb

run -all