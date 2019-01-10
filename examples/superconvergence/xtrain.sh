#!/usr/bin/env sh


TOOLS=./build/tools

$TOOLS/caffe train  --solver=examples/superconvergence/lenetsolver.prototxt  \
    --gpu=all 2>&1 | tee examples/superconvergence/results/lenet

grep 'Test net output #0:' examples/superconvergence/results/lenet  > examples/superconvergence/results/plt/lenet.test.acc.plt
grep 'Test net output #1:' examples/superconvergence/results/lenet  > examples/superconvergence/results/plt/lenet.test.loss.plt
grep 'Train net output #0:' examples/superconvergence/results/lenet  > examples/superconvergence/plt/lenet.train.acc.plt
grep 'Train net output #1:' examples/superconvergence/results/lenet  > examples/superconvergence/results/plt/lenet.train.loss.plt

exit
