# Product-Catalog

**A Simple Product Catalog App**
Built with:

Product catalog
Product details page
Backend requests
Bloc state management
OOP architecture
Clean folder structure


Language: Dart 
Framework: Flutter
Backend: https://dummyjson.com/ (backend imitation)

### For deployment
flutter pub get
flutter run

### Requirements Check

| Requirement              | Implementation                                                   |
| ------------------------ | ---------------------------------------------------------------- |
| Dart language            | Entire project written in Dart                                   |
| Flutter framework        | Built with Flutter                                               |
| BLoC state management    | `product_bloc.dart`, events, states                              |
| API requests             | `ProductService` (HTTP calls)                                    |
| Product list page        | `product_list_page.dart`                                         |
| Product details page     | `product_details_page.dart`                                      |
| DummyJSON backend        | [https://dummyjson.com/products](https://dummyjson.com/products) |
| Master-detail navigation | List → Details flow                                              |


### Structure 

```
lib/
│
├── main.dart
│
├── features/
│   └── products/
│
│       ├── data/
│       │   ├── models/
│       │   │   └── product_model.dart
│       │   │
│       │   ├── repositories/
│       │   │   └── product_repository.dart
│       │   │
│       │   └── services/
│       │       └── product_service.dart
│       │
│       ├── presentation/
│       │   ├── bloc/
│       │   │   ├── product_bloc.dart
│       │   │   ├── product_event.dart
│       │   │   └── product_state.dart
│       │   │
│       │   ├── pages/
│       │   │   ├── product_list_page.dart
│       │   │   └── product_details_page.dart
│       │   │
│       │   └── widgets/
│       │       └── product_card.dart
```

## Screens

###<img width="1920" height="1080" alt="Screenshot (201)" src="https://github.com/user-attachments/assets/3d132b7e-7389-4435-ab24-dc0b7b325be2" />

###<img width="1920" height="1080" alt="Screenshot (202)" src="https://github.com/user-attachments/assets/4f03b99c-f4d6-4e95-8b28-ecb61c58cecc" />


### 📚 Learning Resources
Dart & Flutter
https://dart.dev/guides
https://docs.flutter.dev/get-started
https://flutter.dev/learn
https://dartpad.dev
BLoC State Management
https://bloclibrary.dev
https://pub.dev/packages/flutter_bloc
API in Flutter
https://pub.dev/packages/http
https://docs.flutter.dev/cookbook/networking/fetch-data
