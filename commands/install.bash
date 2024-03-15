#!/usr/bin/env bash

composer global config --no-plugins allow-plugins.dealerdirect/phpcodesniffer-composer-installer true
composer global require --no-interaction magento/magento-coding-standard magento-ecg/coding-standard

composer global -- exec phpcs --config-set installed_paths ../../magento/magento-coding-standard/, ../../magento-ecg/coding-standard
