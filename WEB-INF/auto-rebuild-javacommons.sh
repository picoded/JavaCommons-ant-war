#!/bin/bash

workingDir="`dirname \"$0\"`"
cd "$workingDir" || exit 1
workingDir=$(pwd)

"$workingDir/JavaCommons/build-tools/shell-helpers/rerun-command-on-file-change.sh" "ant buildJavaCommons" "$workingDir" "$workingDir/JavaCommons/src"
