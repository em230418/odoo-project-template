#!/usr/bin/env sh
set -xe
mkdir src
cd src
git clone git@github.com:em230418/server-auth.git -b 14.0 --single-branch
git clone git@github.com:em230418/saas-addons.git -b 14.0 --single-branch
git clone git@github.com:em230418/saas-test-addons.git -b 14.0 --single-branch
