import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mylove/pages/milestone_screen.dart';

class FuturePlansScreen extends StatelessWidget {
  const FuturePlansScreen({super.key});

  final List<String> futureGoals = const [
    "🌸 Travel to Japan together",
    "🐱 Adopt a cat (or two)",
    "🐒 Adopt a monkeyy",
    "🏡 Build our dream home",
    "🌅 Watch the sunset on a beach",
    "🧁 Bake a cake together",
    "🎄 Spend New Year just us two",
    "🎬 Watch those listed movies, tv series and cartoons together",
    "🌍 Visit Paris, Venice, Thailand and Switzerland",
    "📷 Do a couple’s photoshoot (as we are used to)",
    "🛏️ Spend lazy weekend with no phones",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Our Future Plans ✨')),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFFE5EC),
                  Color(0xFFD8B4FE),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          FloatingEmojis(),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(color: Colors.black.withValues(alpha: 0.01)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.separated(
              itemCount: futureGoals.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.85), // semi-transparent bg
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 10),
                    ],
                  ),
                  child: Text(
                    futureGoals[index],
                    style: TextStyle(
                      fontFamily: 'Italianno',
                      fontSize: 24,
                      color: Colors.purple.shade400,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
