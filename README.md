# 🚀 Flutter Custom TextField UI

A highly customizable and reusable **TextField widget for Flutter**
Designed to simplify form inputs with clean UI, validation, and flexible styling.

---

## ✨ Features

* 🎨 Fully customizable UI
* 🧩 Reusable and clean component
* ✅ Built-in validation support
* 🔒 Supports secure input (password fields)
* 📱 Responsive & modern design
* ⚡ Lightweight and easy to integrate

---

## 📸 Preview

<p align="center">
  <img src="https://via.placeholder.com/300x600.png?text=Custom+TextField" width="250"/>
</p>

> 📌 Replace the above image with your actual UI screenshot for better engagement

---

## 🚀 Getting Started

Add the dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_custom_textfield_ui: ^1.0.3
```

Then run:

```bash
flutter pub get
```

---

## 🛠 Basic Usage

```dart
import 'package:flutter_custom_textfield_ui/flutter_custom_textfield_ui.dart';

CustomTextField(
  controller: TextEditingController(),
  hintText: "Enter your name",
)
```

---

## 🎯 Advanced Usage

```dart
CustomTextField(
  controller: controller,
  hintText: "Email",
  prefixIcon: const Icon(Icons.email),
  obscureText: false,
  validator: (value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    return null;
  },
)
```

---

## ⚙️ Parameters

| Parameter     | Description                |
| ------------- | -------------------------- |
| controller    | Controls the input text    |
| hintText      | Placeholder text           |
| prefixIcon    | Icon at the start of field |
| suffixIcon    | Icon at the end of field   |
| validator     | Validation function        |
| obscureText   | For password fields        |
| enabledBorder | Custom border styling      |

---

## 📦 Example

Check the `/example` folder for a complete working demo.

---

## 🤝 Contributing

Contributions are welcome!
Feel free to open issues or submit pull requests.

---

## 👨‍💻 Author

**Manikant Tyagi**
Flutter Developer 🚀

---

## ⭐ Support

If you like this package, please ⭐ it on pub.dev and GitHub!

---
