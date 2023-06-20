#!/usr/bin/sh

mkdir test_results

#echo "########################################"
#iverilog -o ./test_results/CLK ./tests/clock_tb.v clock.v
#./test_results/CLK

#echo "Testing D filflop'
#iverilog -o ./test_results/DFF ./tests/dff_TB.v clock.v dff.v
#./test_results/DFF

#echo "########################################"
#echo "testing 1 bit register"
#iverilog -o ./test_results/BIT ./tests/bit_tb.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v
#./test_results/BIT

#echo "########################################"
#echo "Testing 16 bit register"
#iverilog -o ./test_results/REG16BIT ./tests/reg16bit_tb.v reg16bit.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v
#./test_results/REG16BIT

#echo "########################################"
#echo "Testing RAM8 "
#iverilog -o ./test_results/RAM8 ./tests/ram8_tb.v ram8.v reg16bit.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v ../chips/demux_8way1bit_chip.v ../chips/mux_8way16bit_chip.v
#./test_results/RAM8

#gtkwave ./test_results/RAM8.vcd
#echo "########################################"
#echo "Testing RAM64 "
#iverilog -o ./test_results/RAM64 ./tests/ram64_tb.v ram64.v ram8.v reg16bit.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v ../chips/demux_8way1bit_chip.v ../chips/mux_8way16bit_chip.v
#./test_results/RAM64
#gtkwave ./test_results/RAM64.vcd

#echo "########################################"
#echo "Testing RAM512 "
#iverilog -o ./test_results/RAM512 ./tests/ram512_tb.v ram512.v ram64.v ram8.v reg16bit.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v ../chips/demux_8way1bit_chip.v ../chips/mux_8way16bit_chip.v
#./test_results/RAM512
#gtkwave ./test_results/RAM512.vcd

#echo "########################################"
#echo "Testing RAM4k"
#iverilog -o ./test_results/RAM4K ./tests/ram4k_tb.v fast_ram4k.v ram512.v ram64.v ram8.v reg16bit.v clock.v dff.v bit.v ../chips/mux_chip_2to1.v ../chips/not_chip.v ../chips/and_chip.v ../chips/or_chip.v ../chips/demux_8way1bit_chip.v ../chips/mux_8way16bit_chip.v

#./test_results/RAM4K

echo "########################################"
echo "Testing ram 16k"
iverilog -o ./test_results/RAM16K ./tests/fast_ram16k_tb.v fast_ram16k.v clock.v

./test_results/RAM16K

#gtkwave ./test_results/fast_ram16k.vcd

echo "#########################################"
echo "Testing program counter"
iverilog -o ./test_results/PC ./tests/pc_tb.v clock.v program_counter.v
./test_results/PC
gtkwave ./test_results/pc.vcd

rm test_results -r
