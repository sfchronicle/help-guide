#!/bin/bash

# Super simple script to prep for git deploy

echo "Copying build to export..."
cp -a build/. "./public_export"
