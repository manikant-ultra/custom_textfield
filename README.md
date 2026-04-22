# Flutter Custom TextField UI

A highly customizable and reusable **TextField widget for Flutter** 🚀
Designed to simplify form inputs with clean UI, validation, and flexible styling.

---

## ✨ Features

* 🎨 Fully customizable UI
* 🧩 Reusable component
* ✅ Built-in validation support
* 🔒 Supports secure input (password fields)
* 📱 Responsive & clean design
* ⚡ Lightweight and easy to use

---

## 📸 Preview

<!-- Add your screenshots here -->

<p align="center">
  <img src="https://via.placeholder.com/300x600.png?text=TextField+UI" width="250"/>
</p>

---

## 🚀 Getting Started

Add dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_custom_textfield_ui: ^1.0.0
```

---

## 🛠 Usage

```dart
import 'package:flutter_custom_textfield_ui/flutter_custom_textfield_ui.dart';

CustomTextField(
  controller: TextEditingController(),
  hintText: "Enter your name",
)
```

---

## 🎯 Advanced Example

```dart
CustomTextField(
  controller: controller,
  hintText: "Email",
  prefixIcon: Icon(Icons.email),
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
