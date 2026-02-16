import 'package:flutter/material.dart';
import 'package:store_pro/product_store/views/icecream_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const IcecreamView(),

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.icecream), 
            label: 'Icecreams',
          ),
          NavigationDestination(
            icon: Icon(Icons.search), 
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ]
      ),
    );
  }
}
