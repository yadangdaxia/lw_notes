➜  equiprent-frontend-master ls
app.js  app.json  app.wxss  pages  project.config.json  sitemap.json  utils
➜  equiprent-frontend-master git init
Initialized empty Git repository in /mnt/c/Users/win10/Desktop/webdev/Proj/equiprent-frontend-master/.git/
➜  equiprent-frontend-master git:(master) ✗ git remote add origin git@github.com:AshtonDevNow/equiprent-frontend.git
➜  equiprent-frontend-master git:(master) ✗ git remote -v
origin  git@github.com:AshtonDevNow/equiprent-frontend.git (fetch)
origin  git@github.com:AshtonDevNow/equiprent-frontend.git (push)
➜  equiprent-frontend-master git:(master) ✗ git checkout -b products-page
Switched to a new branch 'products-page'
➜  equiprent-frontend-master git:(products-page) ✗ git add .
➜  equiprent-frontend-master git:(products-page) ✗ git status
On branch products-page

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   .eslintrc.js
        new file:   app.js
        new file:   app.json
        new file:   app.wxss
        new file:   pages/index/index.js
        new file:   pages/index/index.json
        new file:   pages/index/index.wxml
        new file:   pages/index/index.wxss
        new file:   pages/logs/logs.js
        new file:   pages/logs/logs.json
        new file:   pages/logs/logs.wxml
        new file:   pages/logs/logs.wxss
        new file:   pages/products/products.js
        new file:   pages/products/products.json
        new file:   pages/products/products.wxml
        new file:   pages/products/products.wxss
        new file:   project.config.json
        new file:   sitemap.json
        new file:   utils/util.js

➜  equiprent-frontend-master git:(products-page) ✗ git commit -m "added products page"
[products-page (root-commit) ebf70fa] added products page
 19 files changed, 379 insertions(+)
 create mode 100644 .eslintrc.js
 create mode 100644 app.js
 create mode 100644 app.json
 create mode 100644 app.wxss
 create mode 100644 pages/index/index.js
 create mode 100644 pages/index/index.json
 create mode 100644 pages/index/index.wxml
 create mode 100644 pages/index/index.wxss
 create mode 100644 pages/logs/logs.js
 create mode 100644 pages/logs/logs.json
 create mode 100644 pages/logs/logs.wxml
 create mode 100644 pages/logs/logs.wxss
 create mode 100644 pages/products/products.js
 create mode 100644 pages/products/products.json
 create mode 100644 pages/products/products.wxml
 create mode 100644 pages/products/products.wxss
 create mode 100644 project.config.json
 create mode 100644 sitemap.json
 create mode 100644 utils/util.js
➜  equiprent-frontend-master git:(products-page) git checkout master
error: pathspec 'master' did not match any file(s) known to git
➜  equiprent-frontend-master git:(products-page) git branch
* products-page
➜  equiprent-frontend-master git:(products-page) git push origin products-page
Enter passphrase for key '/home/winddell/.ssh/id_ed25519':
Enumerating objects: 25, done.
Counting objects: 100% (25/25), done.
Delta compression using up to 4 threads
Compressing objects: 100% (22/22), done.
Writing objects: 100% (25/25), 5.18 KiB | 14.00 KiB/s, done.
Total 25 (delta 0), reused 0 (delta 0)
remote:
remote: Create a pull request for 'products-page' on GitHub by visiting:
remote:      https://github.com/AshtonDevNow/equiprent-frontend/pull/new/products-page
remote:
To github.com:AshtonDevNow/equiprent-frontend.git
 * [new branch]      products-page -> products-page
➜  equiprent-frontend-master git:(products-page) git pull origin master
Enter passphrase for key '/home/winddell/.ssh/id_ed25519':
remote: Enumerating objects: 21, done.
remote: Counting objects: 100% (21/21), done.
remote: Compressing objects: 100% (19/19), done.
remote: Total 21 (delta 0), reused 21 (delta 0), pack-reused 0
Unpacking objects: 100% (21/21), 4.56 KiB | 9.00 KiB/s, done.
From github.com:AshtonDevNow/equiprent-frontend
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> origin/master
fatal: refusing to merge unrelated histories
➜  equiprent-frontend-master git:(products-page) git pull origin master --allow-unrelated-histories

Enter passphrase for key '/home/winddell/.ssh/id_ed25519':
From github.com:AshtonDevNow/equiprent-frontend
 * branch            master     -> FETCH_HEAD
CONFLICT (add/add): Merge conflict in project.config.json
Auto-merging project.config.json
CONFLICT (add/add): Merge conflict in app.json
Auto-merging app.json
Automatic merge failed; fix conflicts and then commit the result.
➜  equiprent-frontend-master git:(products-page|MERGING) ✗ git add .
➜  equiprent-frontend-master git:(products-page|MERGING) git status
On branch products-page
All conflicts fixed but you are still merging.
  (use "git commit" to conclude merge)

➜  equiprent-frontend-master git:(products-page|MERGING) git commit -m "fixed issues, merging"
[products-page b9113b7] fixed issues, merging
➜  equiprent-frontend-master git:(products-page) git branch
* products-page
➜  equiprent-frontend-master git:(products-page) git pull origin master
Enter passphrase for key '/home/winddell/.ssh/id_ed25519':
From github.com:AshtonDevNow/equiprent-frontend
 * branch            master     -> FETCH_HEAD
Already up to date.
➜  equiprent-frontend-master git:(products-page) git checkout master
Branch 'master' set up to track remote branch 'master' from 'origin'.
Switched to a new branch 'master'
➜  equiprent-frontend-master git:(master) git checkout products-page
Switched to branch 'products-page'
➜  equiprent-frontend-master git:(products-page)
