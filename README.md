# Product-Catalog

Simple Product Catalog App
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

### Requirement Check
Requirement	Где реализовано
Language: Dart	✅	all code on Dart
Framework: Flutter	✅	Flutter used
Bloc for state management	✅	product_bloc.dart, events, states
Request to backend	✅	ProductService + HTTP request
List of products page	✅	product_list_page.dart
Product view/details page	✅	product_details_page.dart
Use dummyjson backend	✅	https://dummyjson.com/products
Master-detail structure	✅	list page → details page navigation

### Structure 

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


