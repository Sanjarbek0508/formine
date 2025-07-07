import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Heart {
  double x;
  double y;
  double size;
  double speed;

  Heart(this.x, this.y, this.size, this.speed);
}

class HeartPainter extends CustomPainter {
  final List<Heart> hearts;

  HeartPainter(this.hearts);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color.fromARGB(255, 243, 77, 130).withValues(alpha: 0.6);
    for (var heart in hearts) {
      _drawHeart(canvas, heart.x, heart.y, heart.size, paint);
    }
  }

  void _drawHeart(Canvas canvas, double x, double y, double size, Paint paint) {
    Path path = Path();
    path.moveTo(x, y);
    path.cubicTo(
      x - size,
      y - size,
      x - size * 2,
      y + size,
      x,
      y + size * 2,
    );
    path.cubicTo(
      x + size * 2,
      y + size,
      x + size,
      y - size,
      x,
      y,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class FloatingHeartsBackground extends StatefulWidget {
  const FloatingHeartsBackground({super.key});

  @override
  State<FloatingHeartsBackground> createState() => _FloatingHeartsBackgroundState();
}

class _FloatingHeartsBackgroundState extends State<FloatingHeartsBackground> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Heart> _hearts;

  @override
  void initState() {
    super.initState();
    _hearts = List.generate(
      20,
      (index) => Heart(
        Random().nextDouble() * 400,
        Random().nextDouble() * 800,
        10 + Random().nextDouble() * 10,
        0.5 + Random().nextDouble(),
      ),
    );

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 9999),
    )..addListener(() {
        for (var heart in _hearts) {
          heart.y -= heart.speed;
          if (heart.y < -20) {
            heart.y = 800;
            heart.x = Random().nextDouble() * 400;
          }
        }
        setState(() {});
      });

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HeartPainter(_hearts),
      child: SizedBox.expand(),
    );
  }
}

class LoveBubble {
  Offset position;
  double size;
  double speed;
  String emoji;

  LoveBubble(this.position, this.size, this.speed, this.emoji);
}

class BubblePainter extends CustomPainter {
  final List<LoveBubble> bubbles;

  BubblePainter(this.bubbles);

  @override
  void paint(Canvas canvas, Size size) {
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    for (var bubble in bubbles) {
      textPainter.text = TextSpan(
        text: bubble.emoji,
        style: TextStyle(fontSize: bubble.size),
      );
      textPainter.layout();
      textPainter.paint(canvas, bubble.position);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class FloatingEmojiBackground extends StatefulWidget {
  const FloatingEmojiBackground({super.key});

  @override
  State<FloatingEmojiBackground> createState() => _FloatingEmojiBackgroundState();
}

class _FloatingEmojiBackgroundState extends State<FloatingEmojiBackground> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late List<LoveBubble> _bubbles;
  final List<String> _emojis = ["💌", "💬", "✨", "🤗", "🧠"];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 60))..repeat();

    _bubbles = List.generate(30, (_) {
      return LoveBubble(
        Offset(Random().nextDouble() * 400, Random().nextDouble() * 800),
        20 + Random().nextDouble() * 10,
        0.3 + Random().nextDouble() * 0.7,
        _emojis[Random().nextInt(_emojis.length)],
      );
    });

    _controller.addListener(() {
      for (var b in _bubbles) {
        b.position = Offset(b.position.dx, b.position.dy - b.speed);
        if (b.position.dy < -50) {
          b.position = Offset(Random().nextDouble() * 400, 800);
        }
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BubblePainter(_bubbles),
      size: Size.infinite,
    );
  }
}

class MilestoneEmoji {
  Offset position;
  double speed;
  String emoji;
  double size;

  MilestoneEmoji({required this.position, required this.speed, required this.emoji, required this.size});
}

class MilestoneEmojiPainter extends CustomPainter {
  final List<MilestoneEmoji> emojis;

  MilestoneEmojiPainter(this.emojis);

  @override
  void paint(Canvas canvas, Size size) {
    final textPainter = TextPainter(textDirection: TextDirection.ltr);

    for (final e in emojis) {
      textPainter.text = TextSpan(
        text: e.emoji,
        style: TextStyle(fontSize: e.size),
      );
      textPainter.layout();
      textPainter.paint(canvas, e.position);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
