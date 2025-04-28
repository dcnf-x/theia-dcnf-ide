#!/bin/bash

set -exo pipefail

npm install
npm run build:browser
