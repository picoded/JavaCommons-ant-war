#!/bin/bash

# Normalize working directory
workingDir="`dirname \"$0\"`";
cd "$workingDir" || exit 1
workingDir="`pwd`";

# Base parent directory
webinfDir="$workingDir";
baseDir="$(dirname "$workingDir")";
context="ROOT";
if [ -z "$1" ]
then
    portNum="8080";
else
    portNum=$1;
fi

echo ">>>";
echo ">>> Running servlet standalone";
echo ">>> + from : $baseDir";
echo ">>> + name : $context";
echo ">>> + port : $portNum";
echo ">>>";

# Process classpath
classPath="$webinfDir/lib/*:$webinfDir/classes/*"

# Run the EmbeddedServlet program
#java -agentlib:jdwp=transport=dt_socket,server=y,address=8000 -cp "$classPath" picoded.servlet.util.EmbeddedServlet "$baseDir" "$context" "$portNum";
java -cp "$classPath" picoded.servlet.util.EmbeddedServlet "$baseDir" "$context" "$portNum";
