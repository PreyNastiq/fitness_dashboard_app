# 🏋️ Fitness Dashboard App

A beautifully crafted **Fitness Dashboard** built using **Flutter**, ideal for personal trainers and fitness professionals. The app features clean design principles including **glassmorphism**, modular widgets, and responsive UI.

---

## 📁 Project Structure

```
lib/
🔽— config/                  # App configuration and theme files
│   🔽— app_color.dart
│   🔽— app_vector.dart
│   └— theme_notifier.dart
│
🔽— screens/                # App screen pages
│   🔽— dashboard.dart
│   └— get_started.dart
│
🔽— widgets/                # Reusable UI widgets
│   🔽— add_new_slot.dart
│   🔽— booking_card.dart
│   🔽— custom_appbar.dart
│   🔽— earning_card.dart
│   🔽— profile_status.dart
│   🔽— theme_toggle.dart
│   └— upcoming_slot.dart
│
└— main.dart               # App entry point
```

---

## ✨ Features

* 🔢 **Earnings Summary Cards**
  Scrollable weekly earning tiles.

* 🗓️ **Booking List Section**
  Glass-style cards showing customer booking slots.

* 🢨 **Glassmorphism UI**
  App bar, booking cards, and other widgets feature frosted-glass effect.

* 🧱 **Component-Based Architecture**
  Easily maintainable and scalable with separate widget and screen files.

* 🎨 **Theme Toggle Support**
  Light and dark mode toggle powered by a notifier.

* 🔄 **Upcoming Slot & Profile Verification Widgets**
  Modular and ready to plug into backend services.

---

## 🧪 Dummy Data (Demo Purposes)

```dart
// Dummy Bookings
final List<Map<String, String>> dummyBookings = [
  {'name': 'John Doe', 'time': '10:00 AM - 11:00 AM'},
  {'name': 'Jane Smith', 'time': '12:00 PM - 1:00 PM'},
  {'name': 'Michael Lee', 'time': '3:00 PM - 4:00 PM'},
];

// Dummy Earnings
final List<Map<String, dynamic>> dummyEarnings = [
  {'week': 'This Week', 'amount': 461.06},
  {'week': 'Last Week', 'amount': 238.92},
  {'week': '2 Weeks Ago', 'amount': 301.89},
  {'week': '3 Weeks Ago', 'amount': 206.18},
  {'week': '4 Weeks Ago', 'amount': 156.40},
  {'week': '5 Weeks Ago', 'amount': 310.22},
];

// Dummy Upcoming Slot
final Map<String, String> dummyUpcomingSlot = {
  'time': '5:00 PM - 6:00 PM',
  'status': 'Booked',
};

// Dummy Profile Status
const String dummyProfileStatus = 'Verified';
```

---

## 🚀 Getting Started

### ✅ Prerequisites

* Flutter SDK ≥ 3.x
* Dart SDK
* IDE: Android Studio / VS Code with Flutter plugin

### ▶️ How to Run

```bash
# Clone the repo
git clone https://github.com/YourUsername/fitness_dashboard.git
cd fitness_dashboard

# Install dependencies
flutter pub get

# Run on emulator/device
flutter run
```

---

## 📌 Roadmap

* [x] Dashboard layout
* [x] Booking cards with blur
* [x] Earnings display
* [x] Glassmorphic AppBar
* [ ] Add Firebase or Supabase backend
* [ ] Real-time booking updates
* [ ] Calendar integration
* [ ] Authentication & profile management

---

## 🧑‍💻 Author

**DD Harshit**
GitHub: [PreyNastiq](https://github.com/PreyNastiq)

---

## 📄 License

This project is open source under the [MIT License](LICENSE).
