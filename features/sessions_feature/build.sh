#!/bin/sh

flutter clean && flutter pub get && flutter dart run build_runner build --delete-conflicting-outputs