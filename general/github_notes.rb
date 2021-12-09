# You can init(ialize) a git repository, commit your changes, and create the associated Github repo:

git init
git add .
git commit -m "my profile page"
gh repo create # this creates the associated repo on Github! Can actually commit before creating this and files will stay "committed"



# To open the Github repo from your browser you can run:
gh repo view --web



# Your profile can be pushed on http://yadangdaxia.github.io/profile/ through usual git commands:

git add .
git commit -m "make my profile prettier"
git push origin gh-pages


#token: (use when updating to main)
git add .
git commit -m "xx"
git push origin main

# Q: How to not have to generate new token each time I push from one computer?
https://github.com/settings/tokens
# Need to give your public key to github.

# See setup instructions under GitHub CLI and
https://github.com/lewagon/setup





# GITHUB PAGES

# Github Pages is a sub-service of Github that makes it easy
# to deploy any static website in 10 seconds (static == not a Rails app).
# It is based on a “magic” branch, called gh-pages. When Github detects
# this branch, it puts your website online.

git co -b gh-pages
git push origin gh-pages # we push the gh-pages branch, not master!
