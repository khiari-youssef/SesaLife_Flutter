#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

echo "${BLUE} Build task :"
sh build.sh || (echo "${RED} CI build task failed" && exit)
echo "${BLUE} Test Task :"
cd test-runner || exit
flutter test test/testAppRunner_test.dart || (echo "${RED} CI test task failed" && exit)
cd ..
echo "${BLUE} Release Task :"
flutter clean
echo "${GREEN} Android app bundle generation Task :"
cd application || exit
OBFUSCATION_DEBUG_OUTPUT_DIR="$(pwd)/build/app/outputs/obfuscation"
flutter build appbundle --release --obfuscate --split-debug-info="$OBFUSCATION_DEBUG_OUTPUT_DIR"  || (echo "${RED} CI Android AppBundle build task failed" && exit)
echo "${GREEN} iOs app package generation Task :"
flutter build ipa --obfuscate --split-debug-info="$OBFUSCATION_DEBUG_OUTPUT_DIR" || (echo "${RED} CI iOs AppBundle build task failed" && exit)

