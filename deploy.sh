git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"

rm -rf build
git clone git@github.com:fpthess/fpthess.github.io.git build
cp -rf _site/* build
cd build
git add *
git commit -a -m "build"
ssh-agent bash -c 'ssh-add ~/.ssh/id_rsa_ed2940c0ad214ed725a40f571e471bb5; git push -u origin master'
cd ..
