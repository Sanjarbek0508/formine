import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mylove/const/fonts.dart';
import 'package:mylove/const/responsive.dart';

class MyFeelingTowardsYou extends StatelessWidget {
  const MyFeelingTowardsYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Feelings 💭"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFE5EC), Color(0xFFD8B4FE)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Optional emoji floaters
          const FloatingEmojis(),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(color: Colors.black.withValues(alpha: 0.01)),
          ),

          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I wanna be real with you...",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      "Sometimes I get jealous. Sometimes I overthink. But it all comes from love. From caring. From wanting you close always. 💌",
                      style: ItalianaStyle.bold(
                        size: appW(14),
                        color: Colors.black,
                      )),
                  SizedBox(height: 20),
                  Text(
                    "Sometimes I get jealous. Sometimes I overthink. But it all comes from love. From caring. From wanting you to be close always💌",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: appH(4)),
                  Text(
                    "Yeah… sometimes I can’t control my jealousy, my aggression, or getting mad over something small. Maybe it’s because I care too deeply. I love being real with you, i love being ME with you. I’m always trying my best… to grow, to be the one you deserve. To ride every ‘up and down’ in your life, in ours, (you know what else😌).\n\nBut hear me out, when I get mad, talk too much, or feel jealous, it’s never because I don’t love you. It’s the opposite. I *do* love you, constantly. That love? It’s unshakable. It’s not fading anytime soon. Ever.\n\nAnd you? Yeah sweetheart, I know you go quiet when something really gets to you. Sometimes you ghost a bit, say you’re busy or drowning in work. I try to understand that too. Because you’re trying in your own way. You’re my lovely *vice versa* — especially when we’re in our little ‘scandal’ arcs. 😂",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  // Add more
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FloatingEmojis extends StatefulWidget {
  const FloatingEmojis({super.key});

  @override
  State<FloatingEmojis> createState() => _FloatingEmojisState();
}

class _FloatingEmojisState extends State<FloatingEmojis> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<_EmojiParticle> _emojis = [];

  final List<String> emojiList = ['💭', '💌', '❤️‍🔥', '🤍', '😔', '🫶']; // emo mood emojis

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 30))..repeat();

    for (int i = 0; i < 40; i++) {
      _emojis.add(
        _EmojiParticle(
          emoji: emojiList[i % emojiList.length],
          x: Random().nextDouble(),
          y: Random().nextDouble(),
          speed: Random().nextDouble() * 0.002 + 0.001,
          size: Random().nextDouble() * 24 + 16,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return CustomPaint(
          painter: _EmojiPainter(emojis: _emojis, progress: _controller.value),
          child: Container(),
        );
      },
    );
  }
}

class _EmojiParticle {
  String emoji;
  double x, y, speed, size;

  _EmojiParticle({
    required this.emoji,
    required this.x,
    required this.y,
    required this.speed,
    required this.size,
  });
}

class _EmojiPainter extends CustomPainter {
  final List<_EmojiParticle> emojis;
  final double progress;

  _EmojiPainter({required this.emojis, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final textPainter = TextPainter(
      textDirection: TextDirection.ltr,
    );

    for (var emoji in emojis) {
      final dx = emoji.x * size.width;
      final dy = (emoji.y + progress * emoji.speed * 100) % 1 * size.height;

      textPainter.text = TextSpan(
        text: emoji.emoji,
        style: TextStyle(fontSize: emoji.size),
      );
      textPainter.layout();
      textPainter.paint(canvas, Offset(dx, dy));
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
