#!/bin/bash
$input="";
while true;
do
     read $input;
     if $input == "quit";
     do:
         exit;
     done
     echo $input;
 done;
