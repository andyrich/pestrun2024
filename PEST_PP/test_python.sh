#!/bin/bash

# Test if Python is installed and callable
if command -v python &> /dev/null; then
    echo "Python is installed. Testing Python call..."

    # Call a simple Python command and store the result
    result=$(python -c "print('Python is working!')")

    # Print the result
    echo "Python call result: $result"
else
    echo "Python is not installed or not in the PATH."
fi