#!/bin/bash

# Check if at least 2 arguments are provided
if [ $# -lt 1 ]; then 
    echo "Usage: $0 <source_folder> [-r]"
    exit 1
fi

# Variables
SOURCE_FOLDER="$1"
RUN_FLAG="$2"

# Check if the source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "ERROR: (Directory) '$SOURCE_FOLDER' does not exist!"
    exit 1
fi

# Find all .cpp files in the source folder and its subdirectories
CPP_FILES=$(find "$SOURCE_FOLDER" -type f -name "*.cpp")

# Compile all the .cpp files into an executable
echo "Compiling C++ files..."
g++ $CPP_FILES -o output_executable

# Check if the -r flag is present
if [ "$RUN_FLAG" == "-r" ]; then
    echo -e "Running... \n"
    ./output_executable
fi