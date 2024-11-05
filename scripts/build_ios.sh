#!/bin/bash

rvm use system

unset GEM_HOME
unset GEM_PATH



# Get the directory of the script
DIRNAME=$(dirname "$0")
echo "Script directory: $DIRNAME"

# Navigate to the project root directory (assuming the script is in ios/scripts)
cd "$DIRNAME/.." || exit

# Get the current directory
CURRENT_DIR=$(pwd)
echo "Current directory: $CURRENT_DIR"

# Set version from arguments or default values
# ìf version not set, use 1.0.0
version=$(grep -E '^version:' $dirname/pubspec.yaml | awk -F':' '{print $2}' | sed 's/ //g')


for arg in "$@"; do
  if [[ $arg == --version=* ]]; then
    version="${arg#*=}"
  fi
done

echo "Building flavor: $flavor, version: $version"

# # Clean and get Flutter dependencies
echo "Cleaning and getting Flutter dependencies"
# flutter clean && flutter pub get
# flutter pub run build_runner build -d

# Print environment information
echo "Ruby version: $(ruby -v)"
echo "Gem version: $(gem -v)"
echo "Fastlane path: $(which fastlane)"
echo "Pod path: $(which pod)"
echo "Current GEM_PATH: $GEM_PATH"


# Check if the ios directory exists and run pod install
if [ -d "ios" ]; then
  echo "Running pod install $CURRENT_DIR/ios"
  echo "Enviroment gem path: $(gem env gempath)"
  cd ios && pod install && cd ..
else
  echo "Error: ios directory does not exist."
  exit 1
fi

# Build the app
echo "Building the app $version"
flutter build ios --release --build-name=$version --no-codesign



