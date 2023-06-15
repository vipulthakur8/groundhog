#!/usr/bin/sh

mkdir test_results

echo "########################################"

iverilog -o ./test_results/CLK ./tests/clock_tb.v clock.v
./test_results/CLK


iverilog -o ./test_results/DFF ./tests/dff_TB.v clock.v dff.v
./test_results/DFF

echo "########################################"
echo "testing 1 bit register"

iverilog -o ./test_results/BIT ./tests/bit_tb.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v

./test_results/BIT


echo "########################################"
echo "Testing 16 bit register"

iverilog -o ./test_results/REG16BIT ./tests/reg16bit_tb.v reg16bit.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v

./test_results/REG16BIT

rm test_results -r
