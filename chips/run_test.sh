#!/usr/bin/sh
# testing the 2 to 1 mulitplexer
mkdir test_results
echo "Testing the multiplexer"
iverilog -o ./test_results/MUX ./tests/mux_2to1_test.v and_chip.v or_chip.v not_chip.v mux_chip_2to1.v 

./test_results/MUX

echo "Testing the demultiplexer"

iverilog -o ./test_results/DEMUX ./tests/demux_2to1_test.v not_chip.v and_chip.v or_chip.v demux_chip_2to1.v 

./test_results/DEMUX

echo "Testing 16 bit not gate"
iverilog -o ./test_results/Not16bit ./tests/not_16bit_chip_tb.v and_chip.v not_chip.v or_chip.v mux_chip_2to1.v demux_chip_2to1.v not_16bit_chip.v

./test_results/Not16bit

echo "Testing 16 bit and gate"

iverilog -o ./test_results/AND16BIT	./tests/and_16bit_chip_tb.v and_chip.v not_chip.v or_chip.v mux_chip_2to1.v demux_chip_2to1.v and_16bit_chip.v

./test_results/AND16BIT

echo "Testing 16 bit or gate"
iverilog -o ./test_results/OR16BIT	./tests/or_16bit_chip_tb.v or_chip.v or_16bit_chip.v

./test_results/OR16BIT

rm test_results -r

