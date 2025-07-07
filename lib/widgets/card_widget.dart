import 'package:flutter/material.dart';
import 'package:mylove/const/fonts.dart';

class LoveCard extends StatelessWidget {
  final String emoji;
  final String title;
  final String description;
  final VoidCallback onTap;

  const LoveCard({
    required this.emoji,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 40)),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: ItalianaStyle.bold(size: 22, color: Colors.black)),
                    const SizedBox(height: 4),
                    Text(description, style: DancingStyle.regular(size: 16, color: Colors.grey[600]!)),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}
