Param (
    [Parameter(Mandatory=$True)][String]$GitFolder
      )
cd $GitFolder

git fetch --all
git reset --hard HEAD
git clean -f -d
git pull "origin" +refs/heads/R02_Joint/Deployment:refs/remotes/origin/R02_Joint/Deployment
git checkout --force -B "R02_Joint/Deployment" "origin/R02_Joint/Deployment"
