bundle exec jekyll contentful --rebuild

git config --global user.email "chris.lim-davies@au.tribalworldwide.com"
git config --global user.name "Chris Davies (CircleCI)"

git checkout -b gh-pages
git add .

CURDATE="$(date +'%r (%d/%m/%Y)')"
git commit -m "Automated rebuild at $CURDATE."

git push -f origin gh-pages
