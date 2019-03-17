#!/bin/bash
python download.py mnist celebA
python main.py --dataset mnist --input_height=28 --output_height=28 --train
