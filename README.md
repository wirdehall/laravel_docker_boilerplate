## What is this and why should i use it?

This project is a way for me to start a new laravel project on my machine without having anything installed besides docker localy.
No need for me to install php, composer or anything else.

I have only used this on my mac, if anyone tries it on another OS, tell me how it went.

## Dependencies

You need to have docker installed on your system.
If you don't have it already, check it out: [www.docker.com](https://www.docker.com/)

## Usage

Run the following in your terminal:
`./setup.bash your_project_name`

## Workflow

So instead of running the usual commands with php you can run them in your docker container just switch `php` with `docker-compose exec --rm web php`

For example:  
`php artisan make:model Test`  
Would be:  
`docker-compose exec --rm web php artisan make:model Test`

To make this easier to work with i would sugest you add a alias for running a php command in your docker container, for example:  
`alias phpd='docker-compose exec --rm web php'`

## Extra

If your like me and prefer 1TBS over PSR-2 you can run `docker-compose exec --rm web php ./fix_code_standard_for_project.php` and again everytime you generate code with artisan.
