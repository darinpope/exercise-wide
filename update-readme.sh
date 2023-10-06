#!/bin/bash
cd /Users/dpope/github/exercise-wide
START=1
END=1
# END=$((1 + $RANDOM % 90))
echo "number of iterations $END"
for i in $(eval echo "{$START..$END}")
do
  git checkout main
  BRANCH_ID=$((1 + $RANDOM % 100))
  git checkout branch-$BRANCH_ID
  echo $i >> readme.md
  git add readme.md
  git commit -m "test"
  git push
  git checkout main
  sleep 3
done