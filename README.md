# nutri_mind

A new Flutter project.

## Getting Started
# runner_commands

--> dart pub run build_runner build --delete-conflicting-outputs

# To run and generate the localization strings

--> flutter pub run easy_localization:generate --output-dir=lib/foundation/localizations --output-file=localizations.g.dart --format=json --source-dir=assets/translations

# To run and generate the locale keys

--> flutter pub run easy_localization:generate -f keys --output-dir=lib/foundation/localizations --output-file=locale_keys.g.dart --source-dir=assets/translations '??' operator for null handling

# Build

--> apk : flutter build apk --flavor=prod -t lib/application/main/main_prod.dart --release
--> apk : flutter buildflutter build appbundle --flavor=prod -t lib/application/main/main_prod.dart --release apk --flavor=prod -t lib/application/main/main_prod.dart --release
