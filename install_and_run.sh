#!/bin/bash
# Exit script if any command fails
set -e

# Function to print messages
print_message() {
    echo "============================================="
    echo "$1"
    echo "============================================="
}

# check if flutter installed
if ! command -v flutter &> /dev/null ; then
   print_message "Flutter is not installed. Please install flutter first."
   exit 1
fi
# check if the script is run inside  a flutter project
if [ ! -f "pubspec.yaml" ]; then
    print_message "This script should be run inside a flutter project."
    exit 1

fi
# Check if packages.txt exists
if [ ! -f "packages.txt" ]; then
    print_message "The packages.txt file is missing. Please create it with the list of packages."
    exit 1
fi
# Install each package listed in packages.txt
while read -r package || [ -n "$package" ]; do
    if [[ -n "$package" && ! "$package" =~ ^# ]]; then
        print_message "Adding package: $package"
        flutter pub add "$package"
    fi
done < packages.txt

print_message "All packages have been installed successfully!"

#Check if packages_dev.txt exists 
if [ -f "packages_dev.txt" ]; then
    print_message "Installing dev dependencies..."
    while read -r package || [ -n "$package" ]; do
        if [[ -n "$package" && ! "$package" =~ ^# ]]; then
            print_message "Adding dev package: $package"
            flutter pub add --dev "$package"
        fi
    done < packages_dev.txt
    print_message "All dev dependencies have been installed successfully!"
else
    print_message "No dev dependencies found. Skipping installation."
fi
# Check if Dart is installed
if ! command -v dart &> /dev/null; then
    print_message "Dart SDK is not installed. Please install Dart first."
    exit 1
fi

# Check if the Dart file exists
DART_FILE="project_setup_generator.dart"

if [ ! -f "$DART_FILE" ]; then
    print_message "The Dart file '$DART_FILE' does not exist in the current directory."
    exit 1
fi

# Run the Dart script
print_message "Running Dart script: $DART_FILE..."
dart run "$DART_FILE"
