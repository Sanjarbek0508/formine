import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mylove/const/router.dart';
import 'package:mylove/pages/main_page.dart';

class LoveEntryScreen extends StatefulWidget {
  const LoveEntryScreen({super.key});

  @override
  State<LoveEntryScreen> createState() => _LoveEntryScreenState();
}

class _LoveEntryScreenState extends State<LoveEntryScreen> with TickerProviderStateMixin {
  late AnimationController _textController;
  late Animation<double> _textOpacity;

  late AnimationController _tapController;
  late Animation<double> _tapScale;

  @override
  void initState() {
    super.initState();

    _textController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _textOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _textController, curve: Curves.easeIn),
    );

    _tapController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _tapScale = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _tapController, curve: Curves.easeInOut),
    );

    _textController.forward();
  }

  @override
  void dispose() {
    _textController.dispose();
    _tapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppRouter.go(const MainPage()), // replace with your main screen
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Background Gradient
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffFFF0F5), Color(0xffFFE4E1)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),

            // Floating heart
            const Positioned(
              left: 80,
              bottom: 50,
              child: Icon(Icons.favorite, color: Colors.pinkAccent, size: 40),
            ),

            // Center Text
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeTransition(
                    opacity: _textOpacity,
                    child: Text(
                      "This app is my heart,\nmy thoughts,\nmy love — just for you 💌",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Italianno',
                        fontSize: 32,
                        color: Colors.pink.shade700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  ScaleTransition(
                    scale: _tapScale,
                    child: Text(
                      "Tap to Explore",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.pink.shade400,
                        fontWeight: FontWeight.w600,
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
  }
}
