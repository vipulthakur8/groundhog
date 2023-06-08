#!/usr/bin/sh

mkdir test_results

echo "#########################################"
echo "Testing half adder"
sleep 0.2

iverilog -o ./test_results/HALFADDER ./tests/half_adder_tb.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/HALFADDER

echo "#########################################"
echo "Testing full adder"
sleep 0.2

iverilog -o ./test_results/FULLADDER ./tests/full_adder_tb.v full_adder.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/FULLADDER

echo "#########################################"
echo "Testing full adder"
sleep 0.2

iverilog -o ./test_results/ADDER ./tests/adder_16_tb.v adder.v full_adder.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/ADDER

rm test_results -r
