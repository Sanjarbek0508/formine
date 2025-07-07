import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mylove/const/animation.dart';
import 'package:mylove/const/fonts.dart';
import 'package:mylove/const/responsive.dart';

class LoveLanguageScreen extends StatelessWidget {
  const LoveLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Love Languages 💌"),
        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFE5EC), Color(0xFFD8B4FE)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        FloatingEmojiBackground(),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(color: Colors.black.withValues(alpha: 0.01)),
        ),
        Padding(
          padding: EdgeInsets.all(appW(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Her Love Language 💕",
                style: ItalianaStyle.bold(size: 22, color: Colors.black),
              ),
              SizedBox(height: appH(10)),
              _buildCard(
                emoji: "🤗",
                title: "Physical Touch",
                description:
                    "She expresses love through cuddles, hugs, and warm hand-holding. Every lil' touch is a whole conversation 😌💫",
                example: "“She hugs me when words aren’t enough.”",
              ),
              SizedBox(height: appH(20)),
              Text(
                "My Love Language 🧠",
                style: ItalianaStyle.bold(size: 22, color: Colors.black),
              ),
              SizedBox(height: appH(10)),
              _buildCard(
                emoji: "🧠",
                title: "Intellectual Stimulation",
                description:
                    "I feel love through deep talks, weird facts, and sharing random thoughts. If I’m talking theories with you, you’re special 🧬✨",
                example: "“I love when we talk about the universe at 2AM.”",
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildCard({
    required String emoji,
    required String title,
    required String description,
    required String example,
  }) {
    return Container(
      padding: EdgeInsets.all(appW(14)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$emoji $title", style: ItalianaStyle.bold(size: 18, color: Colors.black)),
          SizedBox(height: 6),
          Text(description, style: ItalianaStyle.regular(size: 15, color: Colors.black87)),
          SizedBox(height: 10),
          Text(example, style: ItalianaStyle.regular(size: 14, color: Colors.grey.shade300)),
        ],
      ),
    );
  }
}
