#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

# This script is for locally building website for all versions
# Built files are stored in $built

# Takes one argument:
# * tag list - space delimited list of Github tags; Example: "1.1.0 1.0.0 master"
# Example Usage:
# ./build_all_version.sh "1.1.0 1.0.0 master"

set -e
set -x

if [ -z "$1" ]
  then
    echo "Credentials required. Format is USERNAME:PASSWORD"
    exit 1
  else
    credentials=$1
fi

# Make a home for the artifacts
if [ -d "artifacts" ]; then
  rm -rf artifacts
fi
mkdir artifacts
tar xvf docs/build_version_doc/artifacts.tgz -C artifacts

# Clone, clear, and refresh the repo
rm -rf incubator-mxnet-site
git clone https://$credentials@github.com/apache/incubator-mxnet-site.git
cd incubator-mxnet-site
git checkout asf-site
rm -rf *
git rm -r *
cd ../artifacts
cp -r . ../incubator-mxnet-site
cd ../incubator-mxnet-site
pwd

# Push the changes
#ls -R
git branch
git add .
git commit -m "Nightly build"
git push origin asf-site

# Bump the site to force replication
date > date.txt
git add date.txt
git commit -m "Bump the publish timestamp."
git push origin asf-site
