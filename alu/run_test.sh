#!/usr/bin/sh

mkdir test_results

echo "#########################################"
echo "Testing half adder"

iverilog -o ./test_results/HALFADDER ./tests/half_adder_tb.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/HALFADDER

echo "#########################################"
echo "Testing full adder"

iverilog -o ./test_results/FULLADDER ./tests/full_adder_tb.v full_adder.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/FULLADDER

echo "#########################################"
echo "Testing full adder"

iverilog -o ./test_results/ADDER ./tests/adder_16_tb.v adder_16.v full_adder.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/ADDER

echo "#########################################"
echo "Testing incrementer"

iverilog -o ./test_results/INC16 ./tests/incr16_tb.v inc16.v adder_16.v full_adder.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/INC16

echo "#########################################"
echo "Testing alu"

iverilog -o ./test_results/ALU ./tests/alu_tb.v alu.v adder_16.v full_adder.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v ../chips/not_16bit_chip.v ../chips/and_16bit_chip.v ../chips/mux_16bit_chip.v

./test_results/ALU

rm test_results -r
