#!/bin/sh
composer install --no-scripts --ignore-platform-reqs
git clone git@github.com:monteiro/symfony.git
./symfony/link .
