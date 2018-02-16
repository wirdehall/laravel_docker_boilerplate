#!/bin/bash
rm ./setup.bash
rm ./README.md
rm -rf ./.git
docker run --rm -v $(pwd):/app composer/composer create-project --prefer-dist laravel/laravel $1

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ $machine == 'Mac' ]
then
  cp -r ./$1/ ./
else
  cp -r ./$1/* ./
fi

rm -rf ./$1
mv .env.example .env
mv ../${PWD##*/} ../$1

git init
