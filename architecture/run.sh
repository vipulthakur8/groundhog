#!/usr/bin/sh

iverilog -o MEMORY ./tests/memory_tb.v ../memory/clock.v memory.v
./MEMORY

gtkwave MEMORY.vcd

rm MEMORY.vcd MEMORY
