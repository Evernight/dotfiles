#!/bin/sh

echo "========================================"
echo "UnityYamlMerge launched with parameters:"
echo $@
echo "========================================"
'/cygdrive/c/Program Files/Unity-5.5.0p3/Editor/Data/Tools/UnityYamlMerge.exe' $@
