#!/bin/bash
rm ./setup.bash
rm -rf ./.git
docker run --rm -v $(pwd):/app composer/composer create-project --prefer-dist laravel/laravel $1
cp -r ./$1/ ./
rm -rf ./$1
rm ./setup.bash
