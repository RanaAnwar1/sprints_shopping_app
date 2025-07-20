import 'package:flutter/material.dart';
import 'package:sprints_shopping_app/l10n/app_localizations.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  // Store the scaffold messenger key for safe access
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
  GlobalKey<ScaffoldMessengerState>();

  final List<Map<String, String>> electronicItems = [
    {
      'title': 'iPhone 15 Pro',
      'imageUrl':
      'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=400&h=400&fit=crop',
    },
    {
      'title': 'MacBook Pro',
      'imageUrl':
      'https://images.unsplash.com/photo-1591900256859-f96fc8097a7e?w=400&h=400&fit=crop',
    },
    {
      'title': 'AirPods Pro',
      'imageUrl':
      'https://images.unsplash.com/photo-1588423771073-b8903fbb85b5?w=400&h=400&fit=crop',
    },
    {
      'title': 'iPad Air',
      'imageUrl':
      'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400&h=400&fit=crop',
    },
    {
      'title': 'Samsung Galaxy',
      'imageUrl':
      'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?w=400&h=400&fit=crop',
    },
    {
      'title': 'Gaming Laptop',
      'imageUrl':
      'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=400&h=400&fit=crop',
    },
    {
      'title': 'Smart Watch',
      'imageUrl':
      'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=400&fit=crop',
    },
    {
      'title': 'Wireless Speaker',
      'imageUrl':
      'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400&h=400&fit=crop',
    },
    {
      'title': 'Gaming Console',
      'imageUrl':
      'https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?w=400&h=400&fit=crop',
    },
    {
      'title': 'Drone Camera',
      'imageUrl':
      'https://images.unsplash.com/photo-1473968512647-3e447244af8f?w=400&h=400&fit=crop',
    },
    {
      'title': 'VR Headset',
      'imageUrl':
      'https://images.unsplash.com/photo-1593508512255-86ab42a8e620?w=400&h=400&fit=crop',
    },
    {
      'title': 'Bluetooth Mouse',
      'imageUrl':
      'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?w=400&h=400&fit=crop',
    },
  ];

  final List<Map<String, String>> offers = [
    {
      'title': '50% Off Electronics',
      'subtitle': 'Limited time offer on all tech gadgets',
      'badge': '50% OFF',
    },
    {
      'title': 'Free Shipping Weekend',
      'subtitle': 'No delivery charges on orders above \$50',
      'badge': 'FREE SHIP',
    },
    {
      'title': 'Buy 2 Get 1 Free',
      'subtitle': 'On selected accessories and peripherals',
      'badge': 'B2G1',
    },
    {
      'title': 'Student Discount',
      'subtitle': 'Extra 20% off with valid student ID',
      'badge': '20% OFF',
    },
    {
      'title': 'Bundle Deals',
      'subtitle': 'Save more when you buy complete setups',
      'badge': 'BUNDLE',
    },
  ];

  // Safe method to show snackbar
  void _showAddToCartSnackBar() {
    try {
      if (mounted && _scaffoldMessengerKey.currentState != null) {
        _scaffoldMessengerKey.currentState!.showSnackBar(
          SnackBar(
            content: Text('Item Added to Cart!'),
            duration: Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      print('Error showing snackbar: $e');
      // Fallback: try with regular context
      if (mounted) {
        try {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Item Added to Cart!'),
              duration: Duration(seconds: 1),
            ),
          );
        } catch (e2) {
          print('Fallback snackbar also failed: $e2');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Center(child: Text(AppLocalizations.of(context)!.ourProducts)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: PageView(
                  children: [
                    Container(
                      child: Image.network(
                        "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=400&h=300&fit=crop",
                      ),
                    ),
                    Container(
                      child: Image.network(
                        "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=300&fit=crop",
                      ),
                    ),
                    Container(
                      child: Image.network(
                        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=300&fit=crop",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: electronicItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 4,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              flex: 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  electronicItems[index]['imageUrl']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      electronicItems[index]['title']!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  SizedBox(
                                    width: 40,
                                    height: 40,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Use the safe method
                                        _showAddToCartSnackBar();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      child: const Icon(
                                        Icons.shopping_cart,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 70,
                child: Text(
                  AppLocalizations.of(context)!.hotOffer,
                  style: TextStyle(fontSize: 40, color: Colors.black,fontFamily: 'Suwannaphum'),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      onTap: () {},
                      title: Text(
                        offers[index]['title']!,
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      subtitle: Text(
                        offers[index]['subtitle']!,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.purpleAccent,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              offers[index]['badge']!,
                              style: TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}