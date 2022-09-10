#!/bin/bash

# Filter for r0
r0=$(sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt)
echo "$r0" > r0_output.txt

# Filter for r1
sed -n -E 's/\*.* ([A-Z][A-Za-z]+)\. .* ([a-z]+)\./1. \1\n2. \2\n/p' < r1_input.txt > r1_output.txt

# Remark: Not work yet - only for future reference
#cat r1_input.txt | awk 'match($0, /\*.* ([A-Z][A-Za-z]*)\. .* ([a-z]+)\./, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' > r1_output.txt
#sed -E 's/\*.* ([A-Z][A-Za-z]*)\. .* ([a-z]+)\./1. \1\n2. \2\n/' < r1_input.txt > r1_output.txt

# Filter for r2
#r2=$(sed -E 's/\* ((?:[A-Za-z]+(?:\.)+)+)\s([a-z]+\s[a-z]+)/1. \1\n2. \2\n/' < r2_input.txt)
#echo "$r2" > r2_output.txt

# Remark: The 'sed' & 'awk' do not support Non-Capturing-Group (which is '?:'), 
# because 'sed'(support GNU BRE) & 'awk'(support GNU ERE) do not support PCRE.
#cat r2_input.txt | sed -E 's/\*.* ((?:[A-Za-z]+(?:\.)+)+) ([a-z]+ [a-z]+)/1. \1\n2. \2\n/' > r2_output.txt
#cat r2_input.txt | awk -E 'match($0, /\*.*\s((?:[A-Za-z]+(?:\.)+)+)\s([a-z]+\s[a-z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' > r2_output.txt

sed -E 's/\* sandwich with ([A-Za-z.]+) ([a-z ]+)/1. \1\n2. \2\n/' < r2_input.txt > r2_output.txt
