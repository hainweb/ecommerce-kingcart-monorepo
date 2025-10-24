
varOcg="hainweb"
echo "Updating all submodules for $varOcg..."

git pull origin master
git submodule update --init --recursive
git submodule foreach '
  echo "Updating submodule: $name"
  git checkout master
  git pull origin master
'

git add .
git commit -m "Auto-update all submodules to latest master"
git push origin master
