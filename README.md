# Munch & Crunch

## Overview

Munch & Crunch is a Flutter restaurant management prototype focused on role-based restaurant operations. The project includes separate flows for managers and waiters, local SQLite-backed data handling, and multiple screens for menu, staff, table, and order workflows.

## Key Features

- Role-based experience for restaurant staff
- Manager screens for employee registration, food management, and dashboard stats
- Waiter screens for table handling, order management, and billing
- Shared navigation, dashboard cards, and reusable widgets
- Local persistence with SQLite and session-style storage with SharedPreferences
- Cross-platform Flutter codebase suitable for web, desktop, and mobile experiments

## Tech Stack

- Flutter
- Dart
- SQLite via `sqflite`
- Shared Preferences
- `path_provider`

## Business Use Case

This repository is best positioned as a restaurant operations prototype for demonstrating how a single application can support staff workflows such as menu management, order capture, billing, and internal role separation.

## Setup

1. Install Flutter and Dart.
2. Install project dependencies:

```bash
flutter pub get
```

3. Run the application:

```bash
flutter run
```

Optional examples:

```bash
flutter run -d chrome
flutter run -d windows
```

## Project Structure

- `lib/database/` - local database service
- `lib/model/` - restaurant data models
- `lib/routes/` - navigation and route definitions
- `lib/screen/Manager/` - manager-facing screens
- `lib/screen/Waiter/` - waiter-facing screens
- `lib/widgets/` - shared UI building blocks

## Project Status

Prototype / early product foundation. The repository already demonstrates the core application structure and role-based screens, but it should not be presented as a finished production restaurant platform yet.

## Future Improvements

- Production-grade authentication and credential security
- Stronger CRUD flows for food items, tables, and orders
- Reporting exports and financial summaries
- Real-time order tracking and kitchen workflow support
- Cloud sync or backend API integration for multi-device use

## Developer Credit

Prepared by Nexol Tech Solutions.

- GitHub: [syed-daniyalH](https://github.com/syed-daniyalH)
