<?php
$Directory = new RecursiveDirectoryIterator(__DIR__);
$Iterator = new RecursiveIteratorIterator($Directory);
$Regex = new RegexIterator($Iterator, '/^((?!vendor|storage).)*\.php$/i', RecursiveRegexIterator::ALL_MATCHES);
$files = array_keys(iterator_to_array($Regex));
// var_dump($files);
$command = "/Users/daniel/code/php/php.tools/fmt.phar --psr1 --indent_with_space=2 " . implode(' ', $files);
echo "\n" . $command . "\n";
exec($command);
