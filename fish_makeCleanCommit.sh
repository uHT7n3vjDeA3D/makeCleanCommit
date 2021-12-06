#!/usr/bin/env fish

if [ -z $argv[1] ]
  printf "Usage:\n fish_makeCleanCommit.sh \"your commit\"\n";
  exit 1;
end

git add -A ;
git reset .gitignore ;
git commit -m $argv[1] ;
git status ;
git push -u origin main;
