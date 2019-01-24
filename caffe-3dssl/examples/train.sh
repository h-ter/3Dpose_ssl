#!/bin/bash

TOOLS=../build/tools
WEIGHTS=../models/pretrain_pose_model
MEDOL=../../prototxt

$TOOLS/caffe train -gpu=0 -solver=$MODEL/solver.prototxt -weights=$WEIGHTS/pose_iter_320000.caffemodel 2>&1 | tee -a train.log
