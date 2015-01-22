
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

Echo "Pull Remote Deployment Branch" $DepToDep
git pull --rebase --progress "origin"$DepToDep 2>&1 | %{ "$_" }
Echo "" 

Echo "Checkout Deployment Branch " $BranchPrefix"/Deployment"
git checkout --force $BranchPrefix"/Deployment" 2>&1 | %{ "$_" }
Echo "" 

Echo "Merge Development Branch Into Deployment "$DepToDev
git merge $DevBranch 2>&1 | %{ "$_" } 
Echo ""


Echo "Push Deployment to Remote" $DepToDep
git push --progress "origin" $DepToDep 2>&1 | %{ "$_" } 
Echo ""

Echo "Push Development to Remote" $DevToDev
git push --progress "origin" $DevToDev 2>&1 | %{ "$_" } 
Echo ""

Echo "Checkout Development" $BranchPrefix"/Development"
git checkout --force $BranchPrefix"/Development" 2>&1 | %{ "$_" } 
Echo ""
