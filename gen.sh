#!/bin/bash
# Generates git exercises if they do not already exist. See README.md for more info

if [ ! -d 1 ]; then
    mkdir 1
    cd 1
    echo "You have changes in your working tree, add them to the repository in a new commit on master." > README.md
    echo -e "-bananas\n-crisps\n-avocado" > shopping-list
    git init
    git add -A
    git commit -m "initial commit, added bananas, crisps, and avocado"
    echo -e "-bananas\n-crisps\n-avocado\n-chocolate" > shopping-list
    cd ..
fi

if [ ! -d 2 ]; then
    mkdir 2
    cd 2
    echo "You are on branch \"chocolate\", 1 commit ahead of master. Merge into master and then create a new branch \"beans\"." > README.md
    echo -e "-bananas\n-crisps\n-avocado" > shopping-list
    git init
    git add -A
    git commit -m "initial commit, added bananas, crisps, and avocado"
    git checkout -b chocolate
    echo -e "-bananas\n-crisps\n-avocado\n-chocolate" > shopping-list
    git add -A
    git commit -m "added chocolate"
    cd ..
fi

if [ ! -d 3 ]; then
    mkdir 3
    cd 3
    echo "You have a change in your working tree that's ready to commit, but you realise you made the change on master, when it's supposed to be on the feature branch \"chocolate\" (which already exists). Move your change to the feature branch chocolate and commit there. NOTE: This must be accomplished purely with git commands, no editing the file or using unix commands." > README.md
    echo -e "-bananas\n-crisps\n-avocado" > shopping-list
    git init
    git add -A
    git commit -m "initial commit, added bananas, crisps, and avocado"
    git branch chocolate
    echo -e "-bananas\n-crisps\n-avocado\n-chocolate" > shopping-list
    cd ..
fi

if [ ! -d 4 ]; then
    mkdir 4
    cd 4
    echo "You added chocolate to your shopping list in the last commit on master, but then realised you don't actually want chocolate. Reverse the effects of this commit using only git commands, no file editing/unix commands." > README.md
    echo -e "-bananas\n-crisps\n-avocado" > shopping-list
    git init
    git add -A
    git commit -m "initial commit, added bananas, crisps, and avocado"
    echo -e "-bananas\n-crisps\n-avocado\n-chocolate" > shopping-list
    git add -A
    git commit -m "added chocolate"
    cd ..
fi

if [ ! -d 5 ]; then
    mkdir 5
    cd 5
    echo "You're on branch \"chocolate\" +1 -1 commits relative to master, there is another branch \"toiletries\" +2 -0 relative to master. Move branch \"chocolate\" so that it is +1 -0 relative to master, and also take ONLY the second commit from branch \"toiletries\" into \"chocolate\"." > README.md
    echo -e "-bananas\n-crisps\n-avocado" > shopping-list
    git init
    git add -A
    git commit -m "initial commit, added bananas, crisps, and avocado"
    git checkout -b chocolate
    echo -e "-bananas\n-crisps\n-avocado\n-chocolate" > shopping-list
    git add -A
    git commit -m "added chocolate"
    git checkout master
    echo -e "-bananas\n-crisps\n-tortillas\n-avocado" > shopping-list
    git add -A
    git commit -m "added tortillas"
    git checkout -b toiletries
    echo -e "-bananas\n-crisps\n-toothbrush\n-tortillas\n-avocado" > shopping-list
    git add -A
    git commit -m "added toothbrush"
    echo -e "-deodorant\n-bananas\n-crisps\n-toothbrush\n-tortillas\n-avocado" > shopping-list
    git add -A
    git commit -m "added deodorant"
    git checkout chocolate
    cd ..
fi
