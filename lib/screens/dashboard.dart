import 'package:flutter/material.dart';
import 'package:tradly/screens/home_dashboard.dart';
import 'package:tradly/theme.dart';
import 'package:tradly/widgets/text_field.dart';

import '../widgets/search_text_field.dart';
import '../widgets/shopping_cart_icon.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class TabItem {
  final int id;
  final Widget page;
  final String title;
  TabItem({required this.id, required this.page, required this.title});
}

class _DashboardState extends State<Dashboard> {
  final TextEditingController _searchController = TextEditingController();

  static final List<TabItem> _widgetOptions = <TabItem>[
    TabItem(
      id: 1,
      page: const HomeDashboard(),
      title: 'Groceries',
    ),
    TabItem(
      id: 2,
      page: const Center(child: Text('Browse')),
      title: 'Browse',
    ),
    TabItem(
        id: 3,
        page: const Center(child: Text('Tradly Store')),
        title: 'My Store'),
    TabItem(
        id: 4,
        page: const Center(child: Text('Order History')),
        title: 'Order History'),
    TabItem(
      id: 5,
      page: const Center(child: Text('Profile')),
      title: 'Profile',
    ),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_widgetOptions.elementAt(_selectedIndex).title),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          const ShoppingCartIcon(count: 10)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            _widgetOptions.elementAt(_selectedIndex).id == 1
                ? Container(
                    color: brandColor,
                    child: EduSearchTextField(controller: _searchController),
                  )
                : Container(),
            Expanded(child: _widgetOptions.elementAt(_selectedIndex).page),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Browse'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt), label: 'Order History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: brandColor,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
