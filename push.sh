#!/bin/sh

flutter format --set-exit-if-changed lib/component lib/core lib/features lib/main_dev.dart lib/main_stagging.dart lib/main_prod.dart test

git push