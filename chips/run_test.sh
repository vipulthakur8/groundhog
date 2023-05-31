#!/usr/bin/sh

# testing the 2 to 1 mulitplexer
mkdir test_results
echo "Testing the multiplexer"
iverilog -o MUX ./tests/mux_2to1_test.v and_chip.v or_chip.v not_chip.v mux_chip_2to1.v 

./MUX

rm MUX mux.vcd

echo "Testing the demultiplexer"

iverilog -o ./test_results/DEMUX ./tests/demux_2to1_test.v not_chip.v and_chip.v or_chip.v demux_chip_2to1.v 

./test_results/DEMUX

gtkwave ./test_results/demux.vcd

rm test_results -r

