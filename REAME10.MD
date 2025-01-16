git commands
***git init*** = To initialize an empty repositoery
The .git directory is like the brain of a Git project. It keeps track of all your project's changes, lets you work on different versions at the same time, and helps you undo mistakes. Essentially, it manages everything needed for Git to work properly.

***git diff*** To see changes made
***git add.*** To add files to git to track
***git status*** To check the status 
***git commit*** To commit what has been track
***git log*** To check what has been commited
***git push*** To push what has been commited to a github
***git add $$ git commit -m "" $$ git push **** Git life cycle
***git remote -v*** will check if the remote you wnat to push changes is available
if it is not available then you must add a remote
***git remote add origin https://github.com/Lydiobas/my_devops_portforlio.git *** example
***git git push --set-upstream origin*** Setting an upstream branch is not strictly necessary, but it is highly convenient. It allows you to use simple git push and git pull commands without additional parameters, streamlining your workflow. If you don’t set it, you’ll need to specify the remote and branch each time you push or pull.
***git checkout -b feature(name of branch)*** It will checkout a new branch
***git branch*** To verify the branches available
***git checkout main*** To switch between branches
***git merge git rebase or git cherry-pick*** To merge branches
***git cherry pick and the commit id will merge*** This is easy when there are less comits so 
***git merge or git rebase***  works for a large commit ***git rebase is the best in a linear way***
***git merge feauture*** To merge main and feature
***git log --oneline*** To show the commit ids in a compressed format
***git  branch -d feature*** To delete branch
**NB when there is a conflict it means two files have thesame content and one must be modified.
**NB git merge will display at the top 
**NB git rebase will display at the bottom in a linear way that ease understanding







Ready to push changes to the git repo
1 = git clone and paste the url of the git repo
2 = git status 
3 = git add .
4 = git commit -m ""
5 = git remote -v
6 = git git push --set-upstream origin main and it will be successfully pushed.
nb The second push you will not need command on line 22
