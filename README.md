# 🛍️ Sprints Shopping App

A fully functional, beautifully designed shopping app built using **Dart** and **Flutter**, featuring user authentication, dynamic UI, animations, localization (Arabic), and shopping interactions such as add-to-cart and product exploration.
This project is a training project for the sprintsXMicrosoft training program.

---

## 🚀 Features

### ✅ Welcome Screen
- Custom AppBar
- Two images (1 local, 1 online)
- Custom fonts (Suwannaphum-Regular)
- Centered layout with styled "Sign Up" and "Sign In" buttons

### ✅ Sign-Up & Sign-In Forms
- **Validation:**
  - Full Name must start with an uppercase letter
  - Email must contain "@"
  - Password ≥ 6 characters
  - Confirm Password must match
- Success dialog on valid submission
- Seamless navigation to the shopping page

### ✅ Animated Navigation
- Fade transition between authentication screens and home screen

### ✅ Shopping Home Screen
- AppBar: “Our Products” (localized)
- Horizontal `PageView` for featured products
- `GridView` of product cards (image + title + "Add to Cart" button)
- `SnackBar` when items are added to the cart
- “Hot Offers” section using vertical `ListView.builder`

### 🌍 Arabic Localization (Bonus)
- Full Arabic support using `.arb` files and `flutter_localizations`
- Dynamic text switching with no hardcoded strings

---

## 📽️ Demo Video

https://drive.google.com/file/d/1K4YuTG8hG_4FCis6W__pcKoCcQxUxXX0/view?usp=sharing

## 🛠️ Setup Instructions

1. **Clone this repo:**
   ```bash
   git clone https://github.com/RanaAnwar1/sprints_shopping_app.git
