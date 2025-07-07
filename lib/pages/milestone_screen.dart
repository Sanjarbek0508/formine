import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

class MilestoneScreen extends StatelessWidget {
  const MilestoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firstTalkDate = DateTime(2024, 12, 26);
    final startDatingDate = DateTime(2025, 5, 22);
    final today = DateTime.now();

    final daysSinceFirstTalk = today.difference(firstTalkDate).inDays;
    final daysSinceStartDating = today.difference(startDatingDate).inDays;

    String formatDate(DateTime date) {
      return DateFormat('MMMM d, yyyy').format(date);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Timeline 💫'),
      ),
      body: Stack(
        children: [
          // Background gradient
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

          // Content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '🗨️ First Talked\n$daysSinceFirstTalk days ago',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Italianno',
                      fontSize: 26,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Since ${formatDate(firstTalkDate)}',
                    style: TextStyle(
                      fontFamily: 'Italianno',
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    '💞 Officially Together\n$daysSinceStartDating days ago',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Italianno',
                      fontSize: 26,
                      color: Colors.pink,
                    ),
                  ),
                  Text(
                    'Since ${formatDate(startDatingDate)}',
                    style: TextStyle(
                      fontFamily: 'Italianno',
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Icon(Icons.favorite, size: 60, color: Colors.redAccent),
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
  final List<String> emojiList = ['💌', '💫', '🕊️', '💕', '🌈', '💭'];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 30))..repeat();

    final random = Random();

    for (int i = 0; i < 40; i++) {
      _emojis.add(
        _EmojiParticle(
          emoji: emojiList[i % emojiList.length],
          x: random.nextDouble(),
          y: random.nextDouble(),
          speed: random.nextDouble() * 0.5 + 0.2, // vertical speed
          size: random.nextDouble() * 24 + 16,
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
    return SizedBox.expand(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, __) {
          return CustomPaint(
            painter: _EmojiPainter(
              emojis: _emojis,
              time: _controller.value,
            ),
          );
        },
      ),
    );
  }
}

class _EmojiParticle {
  final String emoji;
  final double x;
  final double y;
  final double speed;
  final double size;

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
  final double time;

  _EmojiPainter({required this.emojis, required this.time});

  @override
  void paint(Canvas canvas, Size size) {
    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    for (var emoji in emojis) {
      final dx = emoji.x * size.width;
      double dy = (emoji.y * size.height - (time * 1000 * emoji.speed)) % size.height;

      if (dy < 0) dy += size.height;

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
