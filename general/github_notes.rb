# You can init(ialize) a git repository, commit your changes, and create the associated Github repo:

git init
git add .
git commit -m "my profile page"
gh repo create # this creates the associated repo on Github!

# To open the Github repo from your browser you can run:

gh repo view --web

# Github Pages is a sub-service of Github that makes it easy
# to deploy any static website in 10 seconds (static == not a Rails app).
# It is based on a “magic” branch, called gh-pages. When Github detects
# this branch, it puts your website online.

git co -b gh-pages
git push origin gh-pages # we push the gh-pages branch, not master!


# Your profile can be pushed on http://yadangdaxia.github.io/profile/ through usual git commands:

git add .
git commit -m "make my profile prettier"
git push origin gh-pages

token: (use when updating to main)
git add . 
git commit -m "xx"
git push origin main

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

