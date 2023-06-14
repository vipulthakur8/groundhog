#!/usr/bin/sh

echo "hello world"

mkdir test_results

#iverilog -o ./test_results/CLK ./tests/clock_tb.v clock.v
#./test_results/CLK


iverilog -o ./test_results/DFF ./tests/dff_TB.v clock.v dff.v
./test_results/DFF

rm test_results -r
