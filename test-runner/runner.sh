#!/bin/sh


GREEN='\033[0;32m'
# shellcheck disable=SC2039
echo "${GREEN} Initializing application for tests..."
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
echo "${GREEN} Running application  tests..."
flutter test test/testAppRunner_test.dart