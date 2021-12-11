export WORKSPACE=/Users/subratamazumder/workspace
echo "setting up git project-"$1
mkdir -p $WORKSPACE/$1
cd $WORKSPACE/$1
git init
echo $1 > README.md
wget https://raw.githubusercontent.com/subratamazumder/git-boot/master/LICENSE
git add .
git commit -m "readme added" .
hub create
git push -u origin HEAD
