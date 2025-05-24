# S Rocks Music Assignment
## Architecture Overview

This project follows the **MVVM (Model-View-ViewModel)** architectural pattern to ensure clean separation of concerns, maintainability, and testability. The architecture leverages Flutter's `Provider` package for state management and `Equatable` for value equality comparisons.

### Key Benefits
- **Separation of Concerns**: Clear distinction between UI, business logic, and data
- **Reactive State Management**: Automatic UI updates when data changes
- **Testability**: ViewModels can be easily unit tested
- **Maintainability**: Modular structure makes code easier to maintain and extend
- **Scalability**: Easy to add new features without affecting existing code

## Folder Structure
```
lib/
├── main.dart                   # App entry point with Provider setup
├── main_page.dart              # Main navigation container
├── models/                     # Data models
│   └── service_tile_model.dart # Service tile data structure
├── viewmodels/                 # Business logic layer
│   ├── base_viewmodel.dart     # Base class with common state management
│   ├── home_viewmodel.dart     # Home page business logic
│   ├── main_page_viewmodel.dart # Navigation state management
│   ├── news_viewmodel.dart     # News page business logic
│   ├── projects_viewmodel.dart # Projects page business logic
│   ├── service_detail_viewmodel.dart # Service detail business logic
│   └── trackbox_viewmodel.dart # Trackbox page business logic
├── screens/                    # UI layer (Views)
│   ├── home/
│   │   ├── home_page.dart      # Home screen UI
│   │   └── widgets/
│   │       └── service_tile.dart # Reusable service tile widget
│   ├── news/
│   │   └── news_page.dart      # News screen UI
│   ├── projects/
│   │   └── projects_page.dart  # Projects screen UI
│   ├── service_detail/
│   │   └── service_detail_page.dart # Service detail screen UI
│   └── trackbox/
│       └── trackbox_page.dart  # Trackbox screen UI
├── services/                   # Data access layer
│   └── firestore_service.dart  # Firebase Firestore operations
└── widgets/                    # Shared UI components
├── home_icon.dart
└── svg_icon.dart
```

## MVVM Implementation Details

### Models
- **ServiceTileModel**: Represents service tile data with `Equatable` for value comparison
- Immutable data structures that represent the app's domain entities

### ViewModels
- **BaseViewModel**: Provides common state management (idle, loading, error, success)
- **HomeViewModel**: Manages service tiles loading and error handling
- **MainPageViewModel**: Handles bottom navigation state
- **ServiceDetailViewModel**: Manages service detail page data and interactions
- Each ViewModel extends `ChangeNotifier` for reactive state updates

### Views (Screens)
- **Stateless Widgets**: UI components that consume ViewModel state
- **Consumer Widgets**: Listen to ViewModel changes and rebuild UI accordingly
- Clean separation from business logic - only responsible for UI rendering

### Services
- **FirestoreService**: Handles all Firebase Firestore operations
- Abstracted data access layer for easy testing and maintenance

## State Management Flow

1. **User Interaction**: User taps a button or performs an action
2. **ViewModel**: Processes the interaction and updates internal state
3. **Service Layer**: ViewModel calls appropriate service methods
4. **Data Layer**: Services interact with Firebase/external APIs
5. **State Update**: ViewModel notifies listeners of state changes
6. **UI Rebuild**: Consumer widgets automatically rebuild with new data

## Key Dependencies

- `provider: ^6.1.5` - State management and dependency injection
- `equatable: ^2.0.7` - Value equality comparisons
- `cloud_firestore` - Firebase Firestore integration
- `firebase_core` - Firebase initialization
- `google_fonts` - Custom typography

## Demo Video
📺 [Watch Demo Video](https://drive.google.com/file/d/16Mju4vBKez8HVZ6JLrykInx_JBqoz9tP/view?usp=drivesdk)