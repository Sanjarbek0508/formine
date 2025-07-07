import 'package:flutter/material.dart';
import 'package:mylove/const/colors.dart';
import 'package:mylove/const/fonts.dart';
import 'package:mylove/const/responsive.dart';
import 'package:mylove/const/router.dart';
import 'package:mylove/pages/first_impression_screen.dart';
import 'package:mylove/pages/future_plans.dart';
import 'package:mylove/pages/milestone_screen.dart'; 
import 'package:mylove/pages/love_language_screen.dart';
import 'package:mylove/widgets/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home screen',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: appW(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            12.hb,
            Text(
              'My Love 💖',
              style: ItalianaStyle.bold(size: 19, color: AppColors.lightLavender),
            ),
            LoveCard(
              emoji: "📖",
              title: "My first impression",
              description: "From Day 1 to Forever 💌",
              onTap: () => AppRouter.go(FirstImpressionScreen()),
            ),
            LoveCard(
              emoji: "💖",
              title: "Our Milestones",
              description: "Click to relive how far we’ve come 🗓️",
              onTap: () => AppRouter.go(MilestoneScreen()),
            ),
            LoveCard(
              emoji: "💌",
              title: "Our Love Language",
              description: "How we express love in our own ways 🧠🤗",
              onTap: () => AppRouter.go(LoveLanguageScreen()),
            ),
            LoveCard(
              emoji: "⏳",
              title: "Our Future Plans",
              description: "Dreams we’ll build together 🌍✨",
              onTap: () => AppRouter.go(FuturePlansScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
