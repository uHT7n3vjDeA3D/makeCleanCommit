#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo -e "Usage:\n bash_makeCleanCommit.sh \"your commit\"";
  return 1;
fi

git add -A ;
git reset .gitignore ;
git commit -m $1 ;
git status ;
git push -u origin main;
