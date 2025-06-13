# SimpleMenu
📱 Mobile App Project

This is a SwiftUI-based mobile application designed with a clean and scalable architecture using MVVM (Model-View-ViewModel). The app offers a responsive and dynamic UI powered by SwiftUI’s data flow tools, and persistent local data storage using SQLite.

🏗 Architecture & Technologies
	•	MVVM Architecture: Separates business logic from UI for better maintainability and testability.
	•	SQLite: Lightweight database for persistent local data storage.
	•	@ObservableObject: Used to create ViewModels that publish changes to the UI in real time.
	•	@Published: Properties within ObservableObjects are marked with @Published to trigger UI updates when data changes.
	•	@State: Manages local state within SwiftUI views for lightweight, reactive UI behavior.

✅ Key Features
	•	Clean and maintainable MVVM structure
	•	Real-time UI updates with SwiftUI’s reactive state system
	•	Local data persistence with SQLite integration
	•	Smooth user experience with minimal boilerplate code

📦 Dependencies
	•	SwiftUI
	•	SQLite.swift (or your SQLite integration method) 

