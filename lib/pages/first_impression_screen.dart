import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mylove/const/animation.dart';
import 'package:mylove/const/fonts.dart';
import 'package:mylove/const/responsive.dart';

class FirstImpressionScreen extends StatelessWidget {
  const FirstImpressionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Impression',
          style: ItalianaStyle.regular(
            size: appW(24),
            color: Colors.black,
          ),
        ),
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
          const FloatingHeartsBackground(),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(color: Colors.black.withValues(alpha: 0.01)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appW(16), vertical: appH(20)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dear My Love 💌',
                    style: ItaliannoStyle.regular(
                      size: appW(36),
                      color: Colors.pink.shade700,
                    ),
                  ),
                  SizedBox(height: appH(20)),
                  Text(
                    'I remember the first time we met. 15th of March, sunny day... '
                    'I was about to go home when you suddenly offered to meet — '
                    '(was a hint, as always). I agreed and called you for the first time. '
                    'Heard that *blessing voice*... Ughh melted already 🫠.\n\n'
                    'Then I rushed to the metro to reach Tash City. My heart? was beating so haard'
                    'And when I saw you… girl—acting like a stranger even tho you KNEW it was me was so familiar. '
                    'Felt like you were already close. Like that “only best friends do this” type of vibe.\n\n'
                    'You had this long flowy hair, looking like a literal main character. I was like, '
                    '“Who is this cute little diva..” 🥹💘\n\n'
                    'We talked. We gossiped. We shared. It didn’t feel like strangers meeting. '
                    'It felt like our souls were already vibing in a different lifetime. And that, '
                    'my love, was the most beautiful first impression ever 💗.',
                    style: ItalianaStyle.regular(
                      size: appW(16),
                      color: Colors.grey.shade800,
                    ),
                  ),
                  SizedBox(height: appH(40)),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '- Your Fav Black Mango 🥭💋',
                      style: DancingStyle.regular(
                        size: appW(20),
                        color: Colors.pink.shade600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
