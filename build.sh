#!/usr/bin/env bash

PATH_TO_PROJECT = '/app'

cd PATH_TO_PROJECT

pwd

# Install PHP packages(PHPCS, PHPCBF, Drupal standard).
echo 'Install php_codesniffer...'
composer global require "squizlabs/php_codesniffer=*"

echo 'Install Drupal standard...'
composer global require drupal/coder
