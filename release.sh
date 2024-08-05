#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'


echo "${BLUE} Release Task :"
flutter clean
echo "${GREEN} Android app bundle generation Task :"
cd application || exit 125
OBFUSCATION_DEBUG_OUTPUT_DIR="$(pwd)/build/app/outputs/obfuscation"
flutter build appbundle --release --obfuscate --split-debug-info="$OBFUSCATION_DEBUG_OUTPUT_DIR"  || (echo "${RED} CI Android AppBundle build task failed" && exit 125)
# echo "${GREEN} iOs app package generation Task :"
#flutter build ipa --obfuscate --split-debug-info="$OBFUSCATION_DEBUG_OUTPUT_DIR" || (echo "${RED} CI iOs AppBundle build task failed" && exit)

