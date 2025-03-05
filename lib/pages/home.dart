import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/pages/character.dart';
import 'package:mobile/providers/auth_provider.dart';
import '../providers/theme_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Track the current tab index
  final PageController _pageController =
      PageController(); // Handles swipe navigation

  // List of pages to show
  final List<Widget> _pages = [
    CustomBody(), // Home Page
    const CharacterList(), // Character List Page
  ];

  // Handle Bottom Navigation tap
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Characters',
          ),
        ],
      ),
    );
  }
}

class CustomBody extends ConsumerWidget {
  // ✅ Extend ConsumerWidget
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(
      authProvider.notifier,
    ); // ✅ Access Riverpod auth state
    final theme = ref.watch(themeProvider);
    return Center(
      child: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.all(20), // ✅ Space around the card
              decoration: theme.cardDecoration,
              child: Padding(
                padding: const EdgeInsets.all(
                  8,
                ), // ✅ Inner padding inside the card
                child: Text(
                  "GALAXY VOYAGERS",
                  style: theme.headingStyle,
                  textAlign:
                      TextAlign
                          .center, // (Optional) Centers text inside the box
                ),
              ),
            ),

            Container(
              width: 150,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("It would appear so"),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: theme.buttonStyle,
                    onPressed: () async {
                      await authNotifier
                          .logout(); // ✅ Clear authentication state
                    },
                    child: const Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
