#!/bin/bash

#    Replace XXXX with pdb id
#	      |
#	      |
#	      |
#	      V
grep -v '^>' XXXX | tr -d "\n" | sed 's/./& /g' | tr ' ' '\n' | sed -r 's/I/4.5/g;s/V/4.2/g;s/L/3.8/g;s/F/2.8/g;s/C/2.5/g;s/M/1.9/g;s/A/1.8/g;s/G/-0.4/g;s/T/-0.7/g;s/W/-0.9/g;s/S/-0.8/g;s/Y/-1.3/g;s/P/-1.6/g;s/H/-3.2/g;s/E/-3.5/g;s/Q/-3.5/g;s/D/-3.5/g;s/N/-3.5/g;s/K/-3.9/g;s/R/-4.5/g' | awk '{total +=$1}END{print total/NR}' 


