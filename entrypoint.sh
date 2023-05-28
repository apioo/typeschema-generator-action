#!/bin/sh -l
rm $2/*
php vendor/psx/schema/bin/schema schema:parse "$1" "$2" --format="$3" --config="$4"
git config --global user.name "TypeSchema-Bot";
git config --global user.email "bot@typeschema.org";
git add "$2"
git commit -m "Update code generation"
git push https://$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
