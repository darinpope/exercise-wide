#!/bin/bash
cd /Users/dpope/github/exercise-wide
for i in {2..100}
do
  n=$(printf %03d $i)
  echo $n
  cp .cloudbees/workflows/w001.yaml .cloudbees/workflows/w$n.yaml
done