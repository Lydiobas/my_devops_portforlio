we need git and github for sharing code and versioning
what is the diff bet git and github
	Git is a free, open-source version control system (VCS) that allows developers to store, track, and share their code. It's the most widely used VCS in the world and is considered the standard for software development.
what is github
	GitHub is a web-based platform that allows developers to store, share, and collaborate on code. It's a social coding platform that uses Git, an open source version control system.

steps of creating git
1 = install git in an operating system
2 = git init
3 = git add , git commit and git push. These are the git commands life cycle. 

In the `.git` folder of a Git repository, you'll find several files and directories that are essential for Git's operation. Here's a brief overview of the ones you mentioned:

1. **HEAD**: 
   - This file points to the current branch reference. It tells Git which branch you are currently working on.

2. **config**: 
   - This file contains the configuration settings for the repository. These settings can include user information, remote repository URLs, and other repository-specific settings.

3. **hooks**: 
   - This directory contains client-side scripts that run automatically on certain Git events, such as committing or merging. Hooks can be used to enforce certain policies or automate tasks.

4. **objects**: 
   - This directory stores all the content that is committed to the repository. Git saves everything as objects (blobs, trees, commits, etc.) and they are all stored here in a compressed format.

5. **refs**: 
   - This directory contains references to commit objects. It includes references to branches, tags, and remote-tracking branches.

These components work together to track changes, manage branches, and store the history of your repository.

4 = git status is used to check the status of files.
5 = git diff is used to check what changes have been made 
