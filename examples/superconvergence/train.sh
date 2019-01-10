#!/usr/bin/env sh


TOOLS=./build/tools

$TOOLS/caffe train  --solver=examples/superconvergence/solver.prototxt  \
    --gpu=all 2>&1 | tee examples/superconvergence/results/lr35Fig1a

grep 'Test net output #0:' examples/superconvergence/results/lr35Fig1a  > examples/superconvergence/results/plt/lr35Fig1a.test.acc.plt
grep 'Test net output #1:' examples/superconvergence/results/lr35Fig1a  > examples/superconvergence/results/plt/lr35Fig1a.test.loss.plt
grep 'Train net output #0:' examples/superconvergence/results/lr35Fig1a  > examples/superconvergence/plt/lr35Fig1a.train.acc.plt
grep 'Train net output #1:' examples/superconvergence/results/lr35Fig1a  > examples/superconvergence/results/plt/lr35Fig1a.train.loss.plt

exit
