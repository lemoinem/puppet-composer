# PHP Composer

  * Installs composer’s package using ppa:duggan/composer.
  * Automatically updates to latest version by asking GitHub’s API.
  * Removes `/usr/local/bin/composer.phar` to avoid conflicts

## Install

    puppet module install wemakecustom-composer

## Requirements

  * `puppetlabs-apt`
  * Any kind of `php` class
  * Only tested on Ubuntu

## Usage

    include composer
