#!/bin/bash

# Create a folder
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.317.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.317.0/actions-runner-linux-x64-2.317.0.tar.gz
tar xzf ./actions-runner-linux-x64-2.317.0.tar.gz
export RUNNER_ALLOW_RUNASROOT=1

# Create the runner and start the configuration experience
./config.sh --url $GH_REPO_URL --token $GH_PAT

# Last step, run it!
nohup ./run.sh

sleep 60