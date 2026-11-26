# Bookly

A Flutter book discovery app: browse featured and newest books, search, and open book details.

## Features

- Home feed with featured and newest books
- Search
- Book details with link out to preview
- Lottie / shimmer loading states, native splash
- Local caching with Hive

(TODO: add screenshots; confirm API used, likely Google Books.)

## Tech stack

| Area | Technology |
| --- | --- |
| Framework | Flutter, Dart |
| State management | Bloc / Cubit |
| Networking | Dio |
| Error handling | dartz, equatable |
| DI | get_it |
| Navigation | go_router |
| Storage | Hive |
| UI | lottie, shimmer, flutter_svg, google_fonts, url_launcher |

## Project structure

```
lib/
├── core/
├── Features/
│   ├── home/
│   └── Search/
├── constants.dart
└── main.dart
```

## Getting started

```bash
git clone https://github.com/eslamahmedfahmy/bookly_app.git
cd bookly_app
flutter pub get
flutter run
```

## Author

**Eslam Fahmy** · [LinkedIn](https://www.linkedin.com/in/eslam-ahmed-fahmy-340220202)
