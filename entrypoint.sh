#!/bin/sh -l
if [ $GITHUB_REF_TYPE == 'tag' ]
then
  echo 'Skip generation for tag'
  exit
fi
rm $2/*
php /usr/src/typeschema/generator schema:parse "$1" "$2" --format="$3" --config="$4"
git config --global user.name "TypeSchema-Bot";
git config --global user.email "bot@typeschema.org";
git config --global --add safe.directory /github/workspace
git add "$2"
git commit -m "Update code generation"
git push https://$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git
