#!/bin/sh

flutter format --set-exit-if-changed lib/component lib/core lib/features lib/main_dev.dart lib/main_stagging.dart lib/main_prod.dart test
flutter test && flutter test --coverage

git add .
echo "Input commit message, after formatting code"
read commit
git commit -m "${commit}"
git push
