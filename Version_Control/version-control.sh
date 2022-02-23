#!bin/bash/

#run this version-control.sh file in home/urveshdomadiya/Git.
# this will create two sub-directory in Git directory
mkdir /home/urveshdomadiya/Git/{Git_practical,Version_control}

# change to newly created directory Git_practical 
cd /home/urveshdomadiya/Git/Git_practical/

# clone repo inside Git_practical directory
git clone https://github.com/SimformSolutionsPvtLtd/trainee-practical-devops.git

# move inside 1st directory of current directory
cd */

# copy recursive files/directory into Version_control
cp -r * /home/urveshdomadiya/Git/Version_control/

# change to directory Git
cd /home/urveshdomadiya/Git/

# below commanted command is used to create new repository inside our github.
curl -u UrveshDomadiya7 https://api.github.com/user/repos -d '{"name":"git_task","private":false}'

# create/push new repository on the command line
# this basic command shows in git profile once you create repository is created successfully.
git init
git add Version_control/
git commit -m "Version_control_practical_folders"
git branch -M main
git remote add origin git@github.com:UrveshDomadiya7/git_task.git
git push https://github.com/UrveshDomadiya7/git_task.git


# change to directory 
cd Version_control/

# to install nodejs
# sudo apt install nodejs  

# node package manager for js.
npm install

# node is used for executing a .js files.
node server.js



