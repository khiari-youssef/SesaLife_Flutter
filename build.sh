#!/bin/sh

echo "building core module ..."
sh infrastructure/core/build.sh
echo "building designsystem module ..."
sh infrastructure/designsystem/build.sh
echo "building localizations module ..."
sh infrastructure/localizations/build.sh
echo "building shared_dependencies module ..."
sh infrastructure/shared_dependencies/build.sh
echo "building events_management_feature module ..."
sh events_management_feature/build.sh
echo "building home_feature module ..."
sh home_feature/build.sh
echo "building notifications_feature module ..."
sh notifications_feature/build.sh
echo "building sessions_feature module ..."
sh sessions_feature/build.sh
echo "building users_management_feature module ..."
sh users_management_feature/build.sh
cd application && flutter clean && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs