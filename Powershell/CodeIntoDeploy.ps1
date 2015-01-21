
$GitFolder = "E:\Github\Pagatech"
$BranchPrefix = "R02_Joint"

cd $GitFolder


$DepBranch = "refs/heads/" +$BranchPrefix +"/Deployment"
$DevBranch = "refs/heads/" +$BranchPrefix +"/Development"

$DepToDep = $DepBranch +":" +$DepBranch
$DevToDev = $DevBranch +":" +$DevBranch
$DepToDev = $DepBranch +":" +$DevBranch


cls


git fetch --all 2>&1 | %{ "$_" } 
Echo ""

Echo "Pull Origin" $DepToDep
git pull --rebase --progress "origin"$DepToDep 2>&1 | %{ "$_" }
Echo "" 

Echo "Checkout " $BranchPrefix"/Deployment"
git checkout --force $BranchPrefix"/Deployment" 2>&1 | %{ "$_" }
Echo "" 

Echo "Pull origin"$DepToDev
git pull --rebase --progress "origin"$DepToDev 2>&1 | %{ "$_" } 
Echo ""

Echo "merge " $DevBranch
git merge $DevBranch 2>&1 | %{ "$_" } 
Echo ""

Echo "Push origin" $DepToDep
git push --progress "origin" $DepToDep 2>&1 | %{ "$_" } 
Echo ""

Echo "checkout " $BranchPrefix"/Development"
git checkout --force $BranchPrefix"/Development" 2>&1 | %{ "$_" } 
Echo ""

Echo "Push origin"$DepToDev 
git push --progress "origin"$DepToDev  2>&1 | %{ "$_" }
Echo "" 

Echo  "Push origin" $DepToDep
git push --recurse-submodules=check --progress "origin" $DepToDep 2>&1 | %{ "$_" } 
Echo ""


Echo  "Push origin" $DevToDev
git push --recurse-submodules=check --progress "origin" $DevToDev 2>&1 | %{ "$_" } 
Echo ""

