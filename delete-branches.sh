#!/bin/bash
cd /Users/dpope/github/exercise-wide
for i in {1..100}
do
  n=$(printf %03d $i)
  echo $n
  git checkout main
  git branch -d branch-$n
done