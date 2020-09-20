#!/bin/sh

composer install
git clone git@github.com:monteiro/symfony.git
./symfony/link .

