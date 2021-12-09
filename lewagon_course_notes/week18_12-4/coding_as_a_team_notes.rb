# Website: Invite collaborator
# Collaborator will accept and clone project to his own computer
# Clone with SSH

# As a <ROLE> I can <ACTION> so that <VALUE>
# As a Renter I can Book a flat so that I can stay in a nice place for holiday

# Git push origin master is only for when working on your own.


# GIT BRANCHING:

# For one person to do. E.g.:
rails new PROJECTNAME
# or whatever changes

# After new rails project:
hub create
# Creates repo on Github

git remote -v  # Check repo

# Then grab all the stuff
git pull origin master


# Need to clone repo to your local machine first.
# Best practice: Don't merge your own branch. Someone else should inspect.

git status # Check what's up just to be sure
git branch # You are still on master
# This command only creates the branch (and lists branches)

# To CREATE a new branch and switch to it at the same time:
git checkout -b home-title
# Git checkout allows you to add commits and switches to the branch

# The above is the same as:
git branch home-title
git checkout home-title


git status # (gst for short) Makes sure you didn't accidentally edit a file
git add .
git add "home-title" # to add just that single file
git commit -m "changed home page title"
git push origin home-title  # pushes to branch
# Now it's time for someone else to take a look and check it.

# See differences in terminal
git diff master home-title

# Pull request visible in browser
# Someone else looks at code. If it's ok, merge branch to master.
# Can also make comments to code
# If change is needed, communicate to developer and have him make change.


# After branch has been merged (or whenever done with it), return to master file:
git checkout master # (git co master for short)
# Master will not be updated.
git pull origin master
# Updates your files



# ADDITIONAL COMMANDS

# Check out github page in browser.
hub browse

git add .
git commit -m "reviewed and changed"
# git push origin BRANCH_NAME
git push origin home-title

git merge
# New master will have changes. Can also do this in front-end github page

# Can delete branch in browser
# Delete old branches that have already been merged:
git sweep

# Individually DELETE branches with :
git branch -d home-title # Git prevents you from deleting files with unmerged changes
git branch -D home-title # Force delete even if file has unmerged changes

# Make sure git status is clean before pull, checkout, or merge

# Handling conflicts:
# E.g. on same branch two people have edited the same file
# Will see note in browser - Click 'Resolve conflicts'
