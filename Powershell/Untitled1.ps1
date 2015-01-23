#push --recurse-submodules=check --progress "origin" refs/heads/R02_Joint/Development:refs/heads/R02_Joint/Development
cls


git push origin :R01_Finance/Development_BIML 2>&1 | %{ "$_" }

git branch -a 2>&1 | %{ "$_" }