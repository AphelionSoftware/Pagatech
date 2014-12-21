"C:\Program Files (x86)\Git\bin\git.exe" fetch --all
"C:\Program Files (x86)\Git\bin\git.exe" pull --rebase --progress "origin" +refs/heads/r02_Joint/Deployment:+refs/heads/r02_Joint/Deployment:refs/remotes/origin/r02_Joint/Deployment
"C:\Program Files (x86)\Git\bin\git.exe" checkout --force "r02_Joint/Deployment"
"C:\Program Files (x86)\Git\bin\git.exe" pull --rebase --progress "origin" +refs/heads/r02_Joint/Deployment:refs/remotes/origin/r01_Finance/Development
"C:\Program Files (x86)\Git\bin\git.exe" merge r01_Finance/Development
"C:\Program Files (x86)\Git\bin\git.exe" push --progress "origin" refs/heads/r02_Joint/Deployment:refs/heads/r02_Joint/Deployment
"C:\Program Files (x86)\Git\bin\git.exe" checkout --force "r01_Finance/Development"
"C:\Program Files (x86)\Git\bin\git.exe" push --progress "origin" refs/heads/r01_Finance/Development:refs/remotes/origin/r01_Finance/Development