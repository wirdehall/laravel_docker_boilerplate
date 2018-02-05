## To run a existing composer-file
docker run --rm -v $(pwd):/app composer/composer install


## To Install new laravel
docker run --rm -v $(pwd):/app composer/composer create-project --prefer-dist laravel/laravel {project_name}
