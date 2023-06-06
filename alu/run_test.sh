#!/usr/bin/sh

mkdir test_results

echo "#########################################"
echo "Testing half adder"
sleep 0.2

iverilog -o ./test_results/HALFADDER ./tests/half_adder_tb.v half_adder.v ../chips/and_chip.v ../chips/xor_chip.v ../chips/not_chip.v  ../chips/or_chip.v 

./test_results/HALFADDER


