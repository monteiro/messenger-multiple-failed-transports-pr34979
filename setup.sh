#!/bin/sh
composer install --no-scripts --ignore-platform-reqs
git clone git@github.com:monteiro/symfony.git
cd symfony 
git co remotes/origin/messenger-multiple-failed-transports
cd ..
./symfony/link .
