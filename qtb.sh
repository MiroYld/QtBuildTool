#!/bin/bash

# Check if there is an argument (the path to the .pro file)
if [ -z "$1" ]; then
  echo "Please provide the path to the .pro file."
  exit 1
fi

# Extract the project name from the .pro file path
pro_file="$1"
project_name=$(basename "${pro_file%.pro}")

# Create the build directory if it doesn't exist
build_dir="build"
if [ ! -d "$build_dir" ]; then
  mkdir "$build_dir"
fi

# Change into the build directory
cd "$build_dir" || exit

# Run qmake with the path to the .pro file
qmake "../$pro_file"

# Perform make clean; make VERBOSE=y all and redirect the output to make_output.txt
make clean
make VERBOSE=y all &> make_output.txt

# Use compiledb to generate the compile_commands.json file
compiledb --parse make_output.txt

echo "The compile_commands.json file has been generated in the build directory."
