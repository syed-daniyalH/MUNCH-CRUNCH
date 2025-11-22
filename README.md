# 🍽️ Munch & Crunch - Restaurant Management System

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)

**A modern, full-featured restaurant management system built with Flutter**

[Features](#-features) • [Installation](#-installation) • [User Credentials](#-user-credentials) • [Screenshots](#-screenshots) • [Tech Stack](#-tech-stack)

</div>

---

## 📋 Overview

**Munch & Crunch** is a comprehensive restaurant management system designed to streamline operations for restaurants of all sizes. Built with Flutter and Material Design 3, it provides role-based access for Admins, Managers, and Waiters with an intuitive, modern interface.

### ✨ Key Highlights

- 🎨 **Modern UI/UX** - Beautiful, responsive design with gradient backgrounds and smooth animations
- 👥 **Role-Based Access Control** - Separate dashboards for Admin, Manager, and Waiter roles
- 🍔 **Menu Management** - Comprehensive food menu system with featured items
- 📊 **Dashboard Analytics** - Quick stats and performance metrics
- 📅 **Table Reservations** - Easy-to-use reservation system
- ⭐ **Customer Reviews** - Display customer feedback and ratings
- 🎉 **Promotional Features** - Daily specials and promotional banners

---

## 🚀 Features

### 🏠 Customer-Facing Features
- **Hero Landing Page** - Eye-catching welcome section with call-to-action buttons
- **Featured Menu Display** - Horizontally scrollable menu cards with vibrant colors
- **Daily Specials** - Highlighted promotional offers with countdown timers
- **Chef's Recommendations** - Curated picks from the chef
- **Table Reservations** - Quick booking form with date/time selection
- **Customer Reviews** - Carousel showcasing customer testimonials
- **Quick Stats** - Social proof metrics (5000+ customers, 4.8★ rating)

### 👨‍💼 Manager Dashboard
- **Employee Registration** - Register new managers and waiters
- **Food Menu Management** - Add, edit, and remove menu items
- **Employee Work Monitoring** - Track employee activities
- **Statistics & Reports** - View business performance metrics
- **Role-Based Navigation** - Access control based on user permissions

### 🍽️ Waiter Dashboard
- **Table Management** - View and manage table seating
- **Order Taking** - Streamlined order placement system
- **Bill Generation** - Quick billing and payment processing
- **Daily Tasks** - Shift management and task tracking

### 🔐 Admin Controls
- **Full System Access** - Complete oversight of all operations
- **User Management** - Create and manage all user roles
- **System Configuration** - Manage restaurant settings

---

## 💻 Installation

### Prerequisites

- Flutter SDK (3.0+)
- Dart SDK (3.0+)
- Chrome/Edge browser (for web deployment)
- Git

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/syed-daniyalH/Restaurant-management-system-.git
   cd restaurant_management_system
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   # For web (Chrome)
   flutter run -d chrome
   
   # For Windows desktop
   flutter run -d windows
   
   # For mobile (Android/iOS)
   flutter run
   ```

4. **Build for production**
   ```bash
   # Web build
   flutter build web
   
   # Windows build
   flutter build windows
   ```

---

## 🔑 User Credentials

The system comes with pre-configured test accounts for each role:

| Role | Username | Password | Access Level |
|------|----------|----------|--------------|
| **Admin** | `Admin` | `admin123` | Full system access, user management, all features |
| **Manager** | `Manager` | `manager123` | Employee management, food menu, statistics |
| **Waiter** | `Waiter` | `waiter123` | Table management, order taking, billing |

> **Note:** For production use, please change these credentials and implement secure password hashing.

---

## 🍔 Menu Items

The system currently features the following food items:

| Item | Description | Price | Icon |
|------|-------------|-------|------|
| 🍔 **Burger** | Anda wala burger | $8.99 | Lunch Dining |
| 🍕 **Pizza** | Gol Gol Pijja | $12.99 | Pizza |
| 🌯 **Shawarma** | Chicken Shawarma | $7.99 | Kebab |
| 🥜 **Peanut Butter** | [Moongh-phali + Makhan] wala kala jam | $4.99 | Cookie |

*Additional items can be added through the Manager dashboard*

---

## 🎨 Design System

### Color Palette
- **Primary (Deep Teal):** `#00695C` - AppBar, buttons, accents
- **Secondary (Amber):** `#FFB300` - CTAs, highlights, special offers
- **Background:** `#F5F5F5` - Light gray for subtle contrast
- **Surface:** `#FFFFFF` - Cards and elevated components

### Typography
- **Headings:** 24-48px, Bold, Primary/White
- **Body Text:** 14-16px, Regular, Gray
- **Prices:** 14-18px, Bold, Primary Color

### Design Principles
- ✅ Material Design 3 guidelines
- ✅ WCAG 2.1 AA accessibility standards
- ✅ Responsive layouts for all screen sizes
- ✅ Smooth animations and transitions
- ✅ Consistent spacing (16-32px rhythm)

---

## 📱 Screenshots

### Home Page
The landing page features 8 comprehensive sections:
1. Hero section with gradient background
2. Quick stats grid (customers, rating, experience)
3. Featured menu carousel
4. Daily specials banner
5. Chef's recommendations
6. Table reservation widget
7. Customer reviews
8. Promotional banners

### Dashboards
- **Manager Dashboard** - Employee management, food menu, statistics
- **Waiter Dashboard** - Table seating, order management, billing

---

## 🛠️ Tech Stack

### Frontend
- **Flutter 3.x** - Cross-platform UI framework
- **Material Design 3** - Modern design system
- **Dart 3.x** - Programming language

### State Management
- **StatefulWidget** - Local state management
- **SharedPreferences** - Session persistence

### Database
- **SQLite** (via sqflite) - Local database
- **path_provider** - File system access

### Additional Packages
- `shared_preferences` - User session management
- `sqflite` - SQLite database integration
- `path_provider` - Database path handling

---

## 📂 Project Structure

```
restaurant_management_system/
├── lib/
│   ├── classes/          # Data models and utility classes
│   │   ├── menu_item.dart
│   │   └── route.dart
│   ├── database/         # Database service and schema
│   │   └── database_service.dart
│   ├── model/            # Data models
│   │   ├── customer_model.dart
│   │   ├── food_menu_model.dart
│   │   ├── order_placement_model.dart
│   │   ├── role_model.dart
│   │   ├── table_model.dart
│   │   └── user_model.dart
│   ├── routes/           # Navigation and routing
│   │   ├── footer_routes.dart
│   │   ├── routes.dart
│   │   └── sidebar_routes.dart
│   ├── screen/           # UI screens
│   │   ├── Manager/      # Manager-specific screens
│   │   │   ├── emp_register.dart
│   │   │   ├── emp_work.dart
│   │   │   ├── food.dart
│   │   │   ├── manager.dart
│   │   │   └── stats.dart
│   │   ├── Waiter/       # Waiter-specific screens
│   │   │   ├── bill.dart
│   │   │   ├── order_manage.dart
│   │   │   ├── table_manage.dart
│   │   │   └── waiter.dart
│   │   ├── Home.dart     # Main landing page
│   │   ├── LoadingPage.dart
│   │   ├── Login.dart
│   │   └── Register.dart
│   ├── services/         # Business logic services
│   │   └── SharedPref_Helper.dart
│   ├── widgets/          # Reusable UI components
│   │   ├── dashboard_card.dart
│   │   ├── drawer.dart
│   │   └── footer.dart
│   └── main.dart         # Application entry point
├── pubspec.yaml          # Dependencies configuration
└── README.md             # This file
```

---

## 🎯 Roadmap

### Planned Features
- [ ] Real-time order tracking
- [ ] Inventory management
- [ ] Payment gateway integration
- [ ] Multi-language support
- [ ] Dark mode theme
- [ ] Export reports (PDF, Excel)
- [ ] Employee scheduling system
- [ ] Customer loyalty program
- [ ] Kitchen display system
- [ ] Analytics dashboard with charts

### In Progress
- [ ] User registration module with database integration
- [ ] Enhanced food menu management with images
- [ ] Advanced table reservation system

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

## 👨‍💻 Author

**Syed Daniyal**

- GitHub: [@syed-daniyalH](https://github.com/syed-daniyalH)
- Repository: [Restaurant Management System](https://github.com/syed-daniyalH/Restaurant-management-system-)

---

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for the design system
- All contributors and testers

---

## 📞 Support

For support, issues, or feature requests, please open an issue on GitHub.

---

<div align="center">

**Made with ❤️ using Flutter**

⭐ Star this repository if you find it helpful!

</div>
