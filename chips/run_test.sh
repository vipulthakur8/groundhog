#!/usr/bin/sh


mkdir test_results

echo "Testing 16 bit not gate"
iverilog -o ./test_results/Not16bit ./tests/not_16bit_chip_tb.v not_chip.v not_16bit_chip.v

./test_results/Not16bit

echo "***************************************************"

echo "Testing 16 bit and gate"

iverilog -o ./test_results/AND16BIT ./tests/and_16bit_chip_tb.v and_chip.v not_chip.v or_chip.v mux_chip_2to1.v demux_chip_2to1.v and_16bit_chip.v

./test_results/AND16BIT
echo "***************************************************"

echo "Testing 16 bit or gate"
iverilog -o ./test_results/OR16BIT ./tests/or_16bit_chip_tb.v or_chip.v or_16bit_chip.v

./test_results/OR16BIT
echo "***************************************************"

echo "Testing 16 bit mux"
iverilog -o ./test_results/MUX16BIT ./tests/mux_16bit_chip_tb.v and_chip.v or_chip.v not_chip.v and_16bit_chip.v or_16bit_chip.v not_16bit_chip.v mux_16bit_chip.v

./test_results/MUX16BIT
echo "***************************************************"

echo "Testing 8 way or gate"
iverilog -o ./test_results/OR8WAY1BIT ./tests/or_8way1bit_chip_tb.v or_chip.v or_8way1bit_chip.v

./test_results/OR8WAY1BIT
echo "***************************************************"

echo "Testing 4way 16 bit mux"
iverilog -o ./test_results/MUX4WAY ./tests/mux_4way16bit_chip_tb.v mux_4way16bit_chip.v

./test_results/MUX4WAY
echo "***************************************************"

echo "Testing 8 way 16 bit mux"
iverilog -o ./test_results/MUX8WAY ./tests/mux_8way16bit_chip_tb.v mux_8way16bit_chip.v

./test_results/MUX8WAY

#removing test_result files after testing the basic chips
rm test_results -r
