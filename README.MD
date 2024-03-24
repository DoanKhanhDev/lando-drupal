# How to add PHPCS and PHPCBF by Lando(Docker)

## Add build when run `lando build`

Add lines in .lando.yml:

```yml
services:
  appserver:
    type: php:8.1
    run:
      - composer global require "squizlabs/php_codesniffer=*" "drupal/coder"
    ...
```

And add tooling:

```yml
tooling:
  phpcs:
    service: appserver
    cmd: phpcs --standard=Drupal --extensions=php,module,inc,install,test,profile,theme,css,info,txt,md,yml
  phpcbf:
    service: appserver
    cmd: phpcbf --standard=Drupal --extensions=php,module,inc,install,test,profile,theme,css,info,txt,md,yml
  ...
```

Run `lando phpcs {path_to_file_or_directory}` to check phpcs

Run `lando phpcbf {path_to_file_or_directory}` to check phpcbf
