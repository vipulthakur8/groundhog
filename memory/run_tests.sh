#!/usr/bin/sh

echo "hello world"

mkdir test_results

iverilog -o ./test_results/CLK ./tests/clock_tb.v clock.v
./test_results/CLK

rm test_results -r
