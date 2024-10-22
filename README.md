# 🛒 Flutter Provider State Management Example

This repository contains the source code for a **Flutter app** that demonstrates the use of the **Provider** package to manage state in a real-world scenario. The app is a simple product catalog where users can add items to a cart and view the cart's total value. The main focus of this project is to show how **Provider** can be used for **efficient state management** in Flutter applications.

[![Watch on YouTube](https://img.youtube.com/vi/qBWVYc6B_Cs/0.jpg)](https://www.youtube.com/watch?v=qBWVYc6B_Cs)

🔗 **[Watch the full tutorial on YouTube](https://www.youtube.com/watch?v=qBWVYc6B_Cs)**

---

## 🎯 Purpose of This Project

The primary goal of this project is to demonstrate **how to use the `Provider` package** in Flutter for managing global app state. It is designed to provide a real-world example rather than a fully functional app, focusing on practical use cases of `Provider` in Flutter.

---

## 🛠️ Features

- Display a list of products.
- Add products to a cart.
- View the total price of items in the cart.
- Efficient state management using `Provider`.

---

## 🏗️ Technologies & Packages

- **Flutter**: For building the cross-platform app.
- **Provider**: For state management.
- **Dart**: Programming language for Flutter.

---

## 🏃 Getting Started

### Prerequisites

Make sure you have Flutter installed on your machine. You can follow the [official installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/Amanullahgit/flutter-provider-state-management.git
   cd flutter-provider-state-management
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

---

## 📂 Project Structure

```plaintext
lib/
├── models/
│   ├── cart_item.dart        # Cart item model
│   ├── product.dart          # Product model
├── providers/
│   ├── cart_provider.dart    # Manages cart state
│   ├── product_provider.dart # Manages product list state
├── screens/
│   ├── cart_screen.dart      # Cart screen
│   ├── product_screen.dart   # Product list screen
├── main.dart                 # Entry point, MultiProvider setup
```

---

## 🎬 Video Tutorial Overview

In the video tutorial, we cover:

1. Introduction to the `Provider` package and its importance for state management.
2. Building a product catalog where users can add items to the cart.
3. Managing cart state and calculating the total price of items.
4. Demonstrating how `Consumer` and `Provider.of` work to optimize widget rebuilding.
5. Best practices for structuring your Flutter app using `Provider`.

[Watch the full tutorial here](https://www.youtube.com/watch?v=VIDEO_ID).

---

## 🛠️ How It Works

- **ProductProvider**: Manages the list of products available in the store (in this example, hardcoded).
- **CartProvider**: Manages the cart's contents and calculates the total price of products. This state is shared globally using `ChangeNotifierProvider`.
- **Consumer**: Used to rebuild specific parts of the UI when the cart state changes, optimizing performance by preventing unnecessary rebuilds.

---


## 🚀 Potential Enhancements

- Add product details and images.
- Implement user authentication.
- Create a checkout flow and integrate a payment gateway (for a full e-commerce app).

---

## 🤝 Contributing

Feel free to fork this repository and submit pull requests. If you encounter any issues or have suggestions for improvements, please open an issue.

---


### 🔗 Useful Links

- [Flutter Documentation](https://flutter.dev/docs)
- [Provider Package](https://pub.dev/packages/provider)

---

Happy coding! 😊
