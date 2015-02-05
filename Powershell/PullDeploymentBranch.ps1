$GitFolder = "F:\Github\Pagatech"
cd $GitFolder

git fetch --all 2>&1 | %{ "$_" }
git reset --hard HEAD 2>&1 | %{ "$_" }
git clean -f -d 2>&1 | %{ "$_" }
git pull "origin" +refs/heads/R02_Joint/Deployment:refs/remotes/origin/R02_Joint/Deployment 2>&1 | %{ "$_" }
git checkout --force -B "R02_Joint/Deployment" "origin/R02_Joint/Deployment" 2>&1 | %{ "$_" }
