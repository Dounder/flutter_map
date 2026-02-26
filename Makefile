.PHONY: help clean clean-cache pod-deintegrate pod-install update-flutter setup build-apk build-ios run test lint format watch-freezed watch-all watch

help:
	@echo "Available commands:"
	@echo "  make setup          - Clean and install everything"
	@echo "  make clean          - Clean build artifacts"
	@echo "  make clean-cache    - Clean Pub cache"
	@echo "  make pod-install    - Install iOS pods"
	@echo "  make pod-deintegrate - Deintegrate iOS pods"
	@echo "  make update-flutter - Update Flutter"
	@echo "  make build-apk      - Build Android APK (use FLAVOR=staging)"
	@echo "  make build-ios      - Build iOS app (use FLAVOR=staging)"
	@echo "  make run            - Run app (use FLAVOR=staging)"
	@echo "  make test           - Run tests"
	@echo "  make lint           - Run linting"
	@echo "  make format         - Format code"
	@echo "  make watch-freezed  - Run build_runner with only freezed (fast)"
	@echo "  make watch-all      - Run build_runner with all builders"
	@echo "  make watch          - Run build_runner with default config"

# Clean Flutter build artifacts and caches
clean:
	flutter clean
	rm -rf ios/Pods ios/Podfile.lock android/.gradle android/app/build ios/build

# Clean Pub cache
clean-cache:
	flutter pub cache clean
	rm -rf ~/.pub-cache

# Deintegrate CocoaPods (iOS)
pod-deintegrate:
	cd ios && pod deintegrate

# Install CocoaPods dependencies
pod-install:
	cd ios && pod install

# Update Flutter to latest version
update-flutter:
	flutter upgrade

# Setup project: clean, get dependencies, update and install pods
setup: clean
	flutter pub get
	cd ios && pod repo update && pod install

# Build APK for Android (use FLAVOR for --flavor, defaults to dev, e.g., staging or prod)
FLAVOR ?= dev
build-apk:
	flutter build apk --release --flavor $(FLAVOR) --dart-define=FLAVOR=$(FLAVOR)

# Build iOS app (use FLAVOR for --flavor, defaults to dev, e.g., staging or prod)
build-ios:
	flutter build ios --release --flavor $(FLAVOR)

# Run the app (use FLAVOR for --flavor, defaults to dev, e.g., staging or prod)
run:
	flutter run --flavor $(FLAVOR)

# Run tests
test:
	flutter test

# Run linting
lint:
	flutter analyze

# Format code
format:
	dart format lib

# Run build_runner with only freezed (fast)
watch-freezed:
	dart run build_runner watch --config freezed --delete-conflicting-outputs

# Run build_runner with all builders
watch-all:
	dart run build_runner watch --config all --delete-conflicting-outputs

# Run build_runner with default config
watch:
	dart run build_runner watch --delete-conflicting-outputs
