#!/bin/bash

#lex parse.l
#yacc -d -y parse.y

#clang y.tab.c lex.yy.c util.c -o parse -ll

flex -o scan.cc parse.fl
bison --defines=y.tab.h -o y.tab.cc parse.ypp
clang++ scan.cc y.tab.cc util.cc -o parse -ll
