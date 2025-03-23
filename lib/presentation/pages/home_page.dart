import 'package:flutter/material.dart';
import 'package:grocery/components/grocery_item.dart';
import 'package:grocery/generated/l10n.dart';
import 'package:grocery/presentation/pages/cart_page.dart';
import 'package:grocery/presentation/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String getGreeting(BuildContext context) {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) {
      return S.of(context).morning;
    } else if (hour >= 12 && hour < 17) {
      return S.of(context).afternoon;
    } else if (hour >= 17 && hour < 21) {
      return S.of(context).evening;
    } else {
      return S.of(context).night;
    }
  }

  @override
  Widget build(BuildContext context) {
    final greeting = getGreeting(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    int selectedindex = 1;
    final List<Widget> selectedWidget = [
      HomePage(),
      CartPage(),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                greeting,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                S.of(context).home_intro,
                style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                S.of(context).category,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: Consumer<CartProvider>(
                builder: (context, value, child) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: value.shopItems.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GroceryItem(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagepath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ), 
      bottomNavigationBar: GNav(
        rippleColor: Colors.grey,
        hoverColor: Colors.grey,
        selectedIndex: selectedindex,
        backgroundColor: const Color.fromARGB(255, 212, 212, 212),
        // activeColor: Colors.red,

        onTabChange: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        iconSize: screenWidth * 0.05,

        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: S.of(context).home,
          ),
          GButton(
            icon: Icons.search_outlined,
            text: S.of(context).search,
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: S.of(context).cart,
            onPressed: () => Navigator.pushNamed(context, 'cart'),
          ),
          GButton(
            icon: Icons.account_circle_outlined,
            text: S.of(context).account,
          ),
        ],
      ),
    );
  }
}
