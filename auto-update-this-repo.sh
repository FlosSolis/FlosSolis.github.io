currentdate=$(date +%Y-%m-%d_%H:%M:%S)
git add .
git commit -m $currentdate" ubuntu22.04 "
git push myblog master --force
