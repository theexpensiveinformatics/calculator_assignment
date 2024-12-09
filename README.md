---

# Calculator App

A simple and interactive calculator app built using Flutter. This project demonstrates effective state management, live calculation, and refreshing functionality using `GetX`.

## Features

- **Real-Time Calculation**: Automatically calculates the result as you type, without needing to press a button.
- **Quote Refresh**: Swipe down to fetch a new inspirational quote from the [ZenQuotes API](https://zenquotes.io/).
- **State Management**: Powered by the lightweight and powerful `GetX` package for state and dependency management.


## Dependencies

- [`GetX`](https://pub.dev/packages/get): For state and dependency management.
- [`http`](https://pub.dev/packages/http): To fetch quotes from ZenQuotes API.

## API Used

- **ZenQuotes API**: Provides inspirational quotes.
  - Endpoint: `https://zenquotes.io/api/random`

## Folder Structure

```plaintext
lib/
├── features/
│   └── calculator/
│       ├── controller/
│       │   └── calculator_controller.dart
│       ├── screens/
│       │   └── widgets/
│       │       └── calculator_screen.dart
├── utils/
│   ├── constant/
│   │   ├── colors.dart
│   │   └── size.dart
│   ├── themes/
│       ├── widget_theme/
│       │   ├── elevated_button_theme.dart
│       │   ├── text_field_theme.dart
│       │   └── text_theme.dart
│       └── theme.dart
└── main.dart
```
