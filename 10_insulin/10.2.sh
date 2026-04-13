#!/bin/bash

# clean
grep -o '[a-z]' preproinsulin-seq.txt | tr -d '\n' > preproinsulin-seq-clean.txt

# split without trailing newline
cut -c1-24   preproinsulin-seq-clean.txt | tr -d '\n' | tee lsinsulin-seq-clean.txt
cut -c25-54  preproinsulin-seq-clean.txt | tr -d '\n' > binsulin-seq-clean.txt
cut -c55-89  preproinsulin-seq-clean.txt | tr -d '\n' > cinsulin-seq-clean.txt
cut -c90-110 preproinsulin-seq-clean.txt | tr -d '\n' > ainsulin-seq-clean.txt

# verify
# 21, 30, 35, 24
echo 
wc -c *seq-clean.txt