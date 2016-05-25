#!/bin/bash

echo "Setting project"

target_directory=$1 # get project target directory
project_name=$2 # set project name
fullpath_project=$(realpath "$target_directory/$project_name") 

echo "Moving to $target_directory"
cd "$fullpath_project"

echo "Creating folders"

mkdir "$fullpath_project"
mkdir "$fullpath_project/live"
mkdir "$fullpath_project/live.git"
mkdir "$fullpath_project/beta"
mkdir "$fullpath_project/beta.git"

echo "Starting git folders"
cd "$fullpath_project/live.git"
git init --bare
cd hooks
touch post-receive
echo "#!/bin/bash\ngit --work-tree=$fullpath_project/live --git-dir=$fullpath_project/live.git checkout -f\n# Sub-shell para executar comandos na pasta /live\n (bower install)" >> post-receive
chmod +x post-receive


echo "Starting git folders"
cd "$fullpath_project/beta.git"
git init --bare
cd hooks
echo "#!/bin/bash\ngit --work-tree=$fullpath_project/beta --git-dir=$fullpath_project/beta.git checkout -f\n# Sub-shell para executar comandos na pasta /beta\n (bower install)" >> post-receive
chmod +x post-receive

echo "Go back to original directory"
# cd "$current_directory"

echo "Finished"



