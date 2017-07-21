git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"

rm -rf build
git clone git@github.com:fpthess/fpthess.github.io.git build
cp -rf _site/* build
cd build
git add *
git commit -a -m "build"
git push -u origin master
cd ..
