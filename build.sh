#!/usr/bin/env bash

# Run composer install.
composer install

# Install PHP packages(PHPCS, PHPCBF, Drupal standard).
composer global require "squizlabs/php_codesniffer=*"

composer global require drupal/coder
