#!/bin/bash

cat > Studdetails <<abc
Student Alice Essentials 20 PSAT 22 Maths 34 Cultural 25 Physics 80 English 70
Student Bob Essentials 23 PSAT 21 Maths 32 Cultural 18 Physics 18 English 94
Student Boby Essentials 43 PSAT 31 Maths 22 Cultural 8 Physics 76 English 93
Student Clara Essentials 18 PSAT 16 Maths 27 Cultural 12 Physics 34 English 45
Student Dirck Essentials 25 PSAT 23 Maths 48 Cultural 25 Physics 45 English 98
Student Eve Essentials 8 PSAT 6 Maths 12 Cultural 13 Physics 4 English 5
abc

cat Studdetails | grep Bob

cat Studdetails | cut -d " " -f2 | grep -E 'i|e|a' --count

cat Studdetails | cut -d " " -f2-12 | grep -i ^b

cat Studdetails | cut -d " " -f2-12 | grep -i ^b
