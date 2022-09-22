import 'package:flutter/material.dart';
import 'package:picpay_clone/view/first_page.dart';
import 'package:picpay_clone/view/payments_page.dart';
import 'package:picpay_clone/view/shop_page.dart';
import 'package:picpay_clone/view/wallet_page.dart';

import 'notifications_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static const List<Widget> widgetOptions = <Widget>[
    FirstPage(),
    WalletPage(),
    PaymentsPage(),
    NotificationsPage(),
    ShopPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetOptions.elementAt(selectedIndex)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        elevation: 4.0,
        child: const Icon(Icons.attach_money_rounded),
      ),
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.green,
            ),
            activeIcon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet_outlined,
              color: Colors.green,
            ),
            activeIcon: Icon(
              Icons.wallet,
              color: Colors.green,
            ),
            label: 'Carteira',
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 25,
              ),
              label: 'Pagar'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add_outlined,
              color: Colors.green,
            ),
            activeIcon: Icon(
              Icons.notification_add,
              color: Colors.green,
            ),
            label: 'Notificações',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.store_outlined,
              color: Colors.green,
            ),
            activeIcon: Icon(
              Icons.store,
              color: Colors.green,
            ),
            label: 'Store',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
