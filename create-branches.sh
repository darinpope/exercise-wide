#!/bin/bash
cd /Users/dpope/github/exercise-wide
for i in {1..100}
do
  n=$(printf %03d $i)
  echo $n
  git checkout main
  git checkout -b branch-$n
  git push --set-upstream origin branch-$n
  git checkout main
done