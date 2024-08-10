#!/bin/bash

#The token is passed through an environment variable
GITHUB_TOKEN="${GITHUB_TOKEN}"

#Variable named repository
REPO_NAME="my-repo"

#Description repository
REPO_DESCRIPTION="Hello world this is  my new repository."

#Use the GitHub API to create a new repository
curl -H "Authorization: token $GITHUB_TOKEN" \
     -H "Accept: application/vnd.github.v3+json" \
     -d "{\"name\":\"$REPO_NAME\", \"description\":\"$REPO_DESCRIPTION\", \"auto_init\":true}" \
     https://api.github.com/user/repos
