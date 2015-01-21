
$GitFolder = "E:\Github\Pagatech"
$BranchPrefix = "R02_Joint"

cd $GitFolder


$DepBranch = "refs/heads/" +$BranchPrefix +"/Deployment"
$DevBranch = "refs/heads/" +$BranchPrefix +"/Development"

$DepToDep = $DepBranch +":" +$DepBranch
$DevToDev = $DevBranch +":" +$DevBranch
$DepToDev = $DepBranch +":" +$DevBranch





git fetch --all 2>&1 | %{ "$_" } 
git pull --rebase --progress "origin"$DepToDep 2>&1 | %{ "$_" } 
git checkout --force $BranchPrefix"/Deployment" 2>&1 | %{ "$_" } 
git pull --rebase --progress "origin"$DepToDev 2>&1 | %{ "$_" } 
git merge $DevBranch 2>&1 | %{ "$_" } 
git push --progress "origin" $DepToDep 2>&1 | %{ "$_" } 
git checkout --force $BranchPrefix"/Development" 2>&1 | %{ "$_" } 
git push --progress "origin"$DepToDev  2>&1 | %{ "$_" } 
git push --recurse-submodules=check --progress "origin" $DepToDep 2>&1 | %{ "$_" } 
git push --recurse-submodules=check --progress "origin" $DevToDev 2>&1 | %{ "$_" } 

