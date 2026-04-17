# Flutter Map

A Flutter application using Mapbox Maps for interactive map functionality with BLoC state management.

## Description

This Flutter app demonstrates map integration with Mapbox, featuring:

- Mapbox Maps Flutter SDK for interactive maps
- BLoC pattern for state management
- Geolocation services
- Dependency injection with GetIt
- Routing with Go Router
- Theming support

## Features

- Interactive Mapbox map display
- Current location tracking with geolocator
- Clean architecture with separation of concerns
- Responsive UI
- Environment-based configuration

## Getting Started

### Prerequisites

- Flutter SDK (>=3.9.0)
- Dart SDK (>=3.9.0)
- Mapbox API key ([Get one here](https://account.mapbox.com/access-tokens/))

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/Dounder/flutter_map.git
   cd flutter_map
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Configure environment variables:

   ```bash
   cp .env.example .env
   ```

   Edit `.env` and add your Mapbox API key:

   ```env
   MAPBOX_API_KEY=your_mapbox_api_key_here
   DEFAULT_LAT=39.5
   DEFAULT_LNG=-98.0
   DEFAULT_ZOOM=15
   ```

4. Run the app:

   ```bash
   flutter run
   ```

### Project Structure

This project follows Domain-Driven Design (DDD) with three main layers:

```
lib/
├── config/              # Shared configuration, themes, routing, dependency injection
├── domain/              # Domain layer: entities, use cases, repositories (interfaces)
│   ├── entities/        # Domain entities and value objects
│   ├── repositories/    # Repository interfaces
│   └── usecases/        # Application use cases
├── infrastructure/      # Infrastructure layer: external concerns, data access
│   ├── datasources/     # Data sources (API, local storage)
│   ├── repositories/    # Repository implementations
│   └── services/        # External services
├── presentation/        # Presentation layer: UI and state management
│   ├── blocs/           # BLoC classes for state management
│   ├── screens/         # UI screens and widgets
│   └── widgets/         # Reusable UI components
└── main.dart            # App entry point
```

## Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `MAPBOX_API_KEY` | Your Mapbox secret API key | Yes |
| `DEFAULT_LAT` | Default map latitude | No (default: 39.5) |
| `DEFAULT_LNG` | Default map longitude | No (default: -98.0) |
| `DEFAULT_ZOOM` | Default map zoom level | No (default: 15) |

## Testing

Run tests with:

```bash
flutter test
```

## Building for Production

### Android

```bash
flutter build apk --release
```

### iOS

```bash
flutter build ios --release
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Mapbox Maps Flutter SDK](https://docs.mapbox.com/flutter/maps/)
- [BLoC Library](https://bloclibrary.dev/)
- [Go Router](https://gorouter.dev/)
