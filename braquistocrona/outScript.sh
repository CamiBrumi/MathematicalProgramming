#!/bin/bash

g++ -Wall -std=c++11 output_px.cc -o output_px
g++ -Wall -std=c++11 output_py.cc -o output_py
./output_px < braqx.txt > resx.txt
./output_py < braqy.txt > resy.txt
cat resx.txt resy.txt > res.m
