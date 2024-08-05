#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

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
sh features/events_management_feature/build.sh || exit
echo "${GREEN} building home_feature module ..."
sh features/home_feature/build.sh || exit
echo "${GREEN} building notifications_feature module ..."
sh features/notifications_feature/build.sh || exit
echo "${GREEN} building sessions_feature module ..."
sh features/sessions_feature/build.sh || exit
echo "${GREEN} building users_management_feature module ..."
sh features/users_management_feature/build.sh || exit
echo "${GREEN} building application module ..."
cd application || echo "${RED} could not access application folder" && exit
flutter clean
flutter pub get
flutter dart run build_runner build --delete-conflicting-outputs
echo "${BLUE} build task completed"