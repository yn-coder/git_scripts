@Echo Batch script for demo - how to handle with remote working copy 
@Echo main_repo - main (bare) repo
@Echo first_wc - work clone of main repo
@Echo second_bare - bare clone of main repo. Used as remote shared
@Echo third_wc - work clone of second_bare

@echo Create bare host repo

git init --bare main_repo

@echo Create first working clone

git clone main_repo first_wc

cd first_wc

echo 123 > 1.txt

git add 1.txt

git status

git commit -m "1 from first wc"

git push origin master:master

cd ..

@echo Create bare clone for remote shared

git clone --bare main_repo second_bare

@echo Create work clone from remote shared

git clone second_bare third_wc

cd first_wc

echo 456 >> 1.txt

git add 1.txt

git commit -m "2 from first wc"

git push

cd ..\second_bare

git --no-pager log

git fetch origin master:master

git --no-pager log

cd ..\third_wc

git fetch

git pull


echo 789 >> 1.txt

git add 1.txt

git commit -m "3 from third wc"

git push

cd ..\second_bare

git push

cd ..\first_wc

git pull

git --no-pager log

type 1.txt
