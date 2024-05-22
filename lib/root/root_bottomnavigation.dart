import 'package:expense_tracker/controller/navigation_controller.dart';
import 'package:expense_tracker/views/home_page.dart';
import 'package:expense_tracker/views/profile_page.dart';
import 'package:expense_tracker/views/settings_page.dart';
import 'package:expense_tracker/views/transaction_page.dart';
import 'package:expense_tracker/views/report_page.dart';
import 'package:expense_tracker/views/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPage extends StatelessWidget {
  final NavigationController controller = Get.put(NavigationController());

  final List<Widget> pages = [
    HomePage(),
    ProfilePage(),
    WalletsPage(),
    TransactionPage(),
    ReportPage(),
    SettingsPage(),
  ];

  final List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(Icons.home, size: 24), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.person, size: 24), label: 'Profile'),
    BottomNavigationBarItem(icon: Icon(Icons.wallet, size: 24), label: 'Wallets'),
    BottomNavigationBarItem(icon: Icon(Icons.compare_arrows, size: 24,), label: 'Transactions'),
    BottomNavigationBarItem(icon: Icon(Icons.bar_chart, size: 24), label: 'Reports'),
    BottomNavigationBarItem(icon: Icon(Icons.settings, size: 24), label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: controller.tabIndex.value,
        children: pages,
      )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.tabIndex.value,
        onTap: controller.changeTabIndex,
        items: items,
        selectedFontSize: 10,
        unselectedFontSize: 8,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        elevation: 5,
        mouseCursor: SystemMouseCursors.basic, // Remove hover effect
      )),
    );
  }
}
