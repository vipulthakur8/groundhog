#!/usr/bin/sh

echo "hello world"

mkdir test_results

#iverilog -o ./test_results/CLK ./tests/clock_tb.v clock.v
#./test_results/CLK


iverilog -o ./test_results/DFF ./tests/dff_TB.v clock.v dff.v
./test_results/DFF

echo "testing 1 bit register"

iverilog -o ./test_results/BIT ./tests/bit_tb.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v

./test_results/BIT

#gtkwave ./test_results/BIT.vcd

rm test_results -r
