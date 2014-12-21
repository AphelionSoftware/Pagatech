"C:\Program Files (x86)\Git\bin\git.exe" fetch --all
git reset --hard HEAD
git clean -f -d
"C:\Program Files (x86)\Git\bin\git.exe" pull "origin" +refs/heads/r02_Joint/Deployment:refs/remotes/origin/r02_Joint/Deployment
"C:\Program Files (x86)\Git\bin\git.exe" checkout --force -B "r02_Joint/Deployment" "origin/r02_Joint/Deployment"
