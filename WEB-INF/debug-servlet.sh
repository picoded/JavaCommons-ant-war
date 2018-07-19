c#!/bin/bash

# Normalize working directory
workingDir="`dirname \"$0\"`";
cd "$workingDir" || exit 1
workingDir="`pwd`";

# Base parent directory
webinfDir="$workingDir";
baseDir="$(dirname "$workingDir")";
context="ROOT";
portNum="8080";

echo ">>>";
echo ">>> Running servlet standalone";
echo ">>> + from : $baseDir";
echo ">>> + name : $context";
echo ">>> + port : $portNum";
echo ">>>";

# Process classpath
classPath="$webinfDir/lib/*:$webinfDir/classes/*"

# Run the EmbeddedServlet program
java -agentlib:jdwp=transport=dt_socket,server=y,address=8000 -cp "$classPath" picoded.servlet.util.EmbeddedServlet "$baseDir" "$context" "$portNum";
