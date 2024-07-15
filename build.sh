#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
# shellcheck disable=SC2039
echo "${GREEN} building shared_dependencies module ..."
sh infrastructure/shared_dependencies/build.sh || exit
# shellcheck disable=SC2039
echo "${GREEN} building localizations module ..."
sh infrastructure/localizations/build.sh || exit
# shellcheck disable=SC2039
echo "${GREEN} building core module ..."
sh infrastructure/core/build.sh || exit
# shellcheck disable=SC2039
echo "${GREEN}building designsystem module ..."
sh infrastructure/designsystem/build.sh || exit
echo "${GREEN} building events_management_feature module ..."
sh events_management_feature/build.sh || exit
echo "${GREEN} building home_feature module ..."
sh home_feature/build.sh || exit
echo "${GREEN} building notifications_feature module ..."
sh notifications_feature/build.sh || exit
echo "${GREEN} building sessions_feature module ..."
sh sessions_feature/build.sh || exit
echo "${GREEN} building users_management_feature module ..."
sh users_management_feature/build.sh || exit
cd application || echo "${RED} could not access application folder" && exit
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs