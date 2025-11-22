import 'package:flutter/material.dart';
import 'package:project_restaurant/classes/route.dart' as _MyAppRoute;
import 'package:project_restaurant/screen/Home.dart';
import 'package:project_restaurant/screen/LoadingPage.dart';
import 'package:project_restaurant/screen/Login.dart';
import 'package:project_restaurant/screen/Manager/emp_work.dart';
import 'package:project_restaurant/screen/Manager/food.dart';
import 'package:project_restaurant/screen/Manager/manager.dart';
import 'package:project_restaurant/screen/Manager/stats.dart';
import 'package:project_restaurant/screen/Register.dart';
import 'package:project_restaurant/screen/Waiter/bill.dart';
import 'package:project_restaurant/screen/Waiter/order_manage.dart';
import 'package:project_restaurant/screen/Waiter/table_manage.dart';
import 'package:project_restaurant/screen/Waiter/waiter.dart';

List<_MyAppRoute.Router> routeArr = [
  _MyAppRoute.Router(
      title: "Home",
      icon: const Icon(Icons.home),
      routeLink: "/m-home",
      widget: const Manager(),
      allowedRoles: ['admin', 'manager']),
  _MyAppRoute.Router(
      title: "Register Employee",
      icon: const Icon(Icons.person),
      routeLink: "/m-emp-register",
      widget: const Register(),
      allowedRoles: ['admin', 'manager']),
  _MyAppRoute.Router(
      title: "Employee Spy Cam",
      icon: const Icon(Icons.plumbing),
      routeLink: "/m-emp-work",
      widget: const EmpWork(),
      allowedRoles: ['admin', 'manager']),
  _MyAppRoute.Router(
      title: "Food",
      icon: const Icon(Icons.restaurant_menu),
      routeLink: "/m-food",
      widget: const Food(),
      allowedRoles: ['admin', 'manager']),
  _MyAppRoute.Router(
      title: "Statistics",
      icon: const Icon(Icons.bar_chart),
      routeLink: "/m-stats",
      widget: const Stats(),
      allowedRoles: ['admin', 'manager']),
  _MyAppRoute.Router(
      title: "Home",
      icon: const Icon(Icons.home),
      routeLink: "/w-home",
      widget: const Waiter(),
      allowedRoles: ['admin', 'waiter']),
  _MyAppRoute.Router(
      title: "Bill",
      icon: const Icon(Icons.receipt),
      routeLink: "/w-bill",
      widget: const Bill(),
      allowedRoles: ['admin', 'waiter']),
  _MyAppRoute.Router(
      title: "Order Management",
      icon: const Icon(Icons.reorder),
      routeLink: "/w-order-manage",
      widget: const OrderManage(),
      allowedRoles: ['admin', 'waiter']),
  _MyAppRoute.Router(
      title: "Table Seating",
      icon: const Icon(Icons.chair),
      routeLink: "/w-table-manage",
      widget: const TableManage(),
      allowedRoles: ['admin', 'waiter']),
  _MyAppRoute.Router(
      title: "Logout",
      icon: const Icon(Icons.plumbing),
      routeLink: "/loading-screen",
      widget: const LoadingScreen(),
      allowedRoles: ["manager", "admin", "waiter"]),
  _MyAppRoute.Router(
      title: "",
      icon: const Icon(Icons.plumbing),
      routeLink: "/login",
      widget: const LoginScreen(),
      allowedRoles: []),
  _MyAppRoute.Router(
      title: "",
      icon: const Icon(Icons.plumbing),
      routeLink: "/admin",
      widget: const Home(),
      allowedRoles: ['admin']),
];
