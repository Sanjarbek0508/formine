import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mylove/const/fonts.dart';
import 'package:mylove/const/responsive.dart';

class WhyYouScreen extends StatelessWidget {
  WhyYouScreen({super.key});

  final List<String> loveReasons = [
    "You make me feel wanted",
    "You always text me goodnight and morning texts",
    "You believe in me",
    "You hype me up even when I look tired.",
    "Your smile heals my soul",
    "You send me reels that scream 'us'",
    "You listen without judging (sometimes judge but still love it))",
    "You hold my hand like it’s forever",
    "You understand my silence",
    "You make even boring days feel special",
    "You know when I need a hug without me saying it",
    "Your voice calms me down",
    "You never give up on me",
    "You call me 'baby' which makes me melt 🫠",
    "You show love in small ways that hit deep",
    "You laugh at my dumb jokes",
    "You remember little things I said months ago..",
    "You make me feel important",
    "You make me feel heard",
    "You know my moods better than I do",
    "You support my weird dreams",
    "You always try to cheer me up",
    "You let me be weird with you",
    "Your jealousy sideeee",
    "You care about my feelings",
    "You send random 'I love you' texts",
    "You notice things no one else does",
    "You make me feel attractive even when I’m not trying",
    "You genuinely care how my day went",
    "You get excited about the little things",
    "You’re my peace in chaos",
    "You don’t try to change me",
    "You accept my flaws and all",
    "You celebrate my wins, big or small",
    "You always have my back",
    "You send random 'Do u even love me' texts😭",
    "You send random 'Just tell me u hate me' textss knowing that I don't😂",
    "You encourage me to be better",
    "You’re always down for food runs",
    "You love me even when I’m annoying",
    "You give the best hugs",
    "You trusting me inviting ur house",
    "You make staying in feel like an adventure",
    "You share your world with me",
    "You hold space for my emotions",
    "You protect me, emotionally and physically",
    "You bring calm to my chaos",
    "You tell me I’m enough",
    "You make me laugh when I want to cry",
    "You look at me like I’m your whole world",
    "You feel like home",
    "You share your food with me (that’s real love)",
    "You always try to understand me",
    "You look good and you know it 😉",
    "You accept my past",
    "You make plans for our future",
    "You kiss me like you mean it",
    "You never make me feel like too much",
    "You’re honest with me",
    "You let me rant even when I sound crazy",
    "You remember my favorite everything",
    "You make my problems feel lighter",
    "You make me feel proud to be yours",
    "You listen to my fav songs just cuz I love them",
    "You tell me I’m beautiful when I need it most",
    "You never fake your love",
    "You love me even when I’m a mess",
    "You treat me like a priority",
    "You never let me sleep mad",
    "You take silly pics with me",
    "You hype me up like I’m a celeb",
    "You make me believe in soulmates",
    "You kiss my forehead 😭",
    "You look at me like I’m magic",
    "You plan things for us",
    "You always look after me like im your son🫠",
    "You share your weird side with me",
    "You let me in when you’re down",
    "You say my name like it means something",
    "You trust me with your vulnerability",
    "You make me feel lucky every day",
    "You’re soft with me even when life’s hard🥹",
    "You remind me I’m loved when I forget",
    "You’re patient when I overthink",
    "You dance with me when there’s no music",
    "You talk about forever with me",
    "You let me annoy you with love",
    "You write me cute messages",
    "You tag me in cute couple posts",
    "You understand my love language",
    "You respect my boundaries",
    "You give me butterflies daily",
    "You kiss me when I least expect it",
    "You tease me in the cutest way",
    "You make me feel special day by day",
    "You open up about your thoughts",
    "You support my goals",
    "You send me voice notes just to say hi",
    "You care about my mental health",
    "You remember my triggers",
    "You give the best compliments",
    "You motivate me to level up",
    "You never make me feel alone",
    "You inspire me every day",
    "You’re my safe space",
    "You’re not just my lover, you’re my best friend",
    "You feel like forever even in one second",
    "You make my heart full",
    "You're YOU❤️"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Why You? 💌"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent.shade100,
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffFFE4E1), Color(0xffFFF0F5)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          const Positioned.fill(child: FloatingHearts()), // ← dreamy hearts float up

          // Your content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  "${loveReasons.length} Reasons I Love You 💖",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Italianno',
                    fontWeight: FontWeight.bold,
                    color: Colors.pink.shade700,
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: loveReasons.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        color: Colors.white.withOpacity(0.9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.pinkAccent.shade100,
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text(
                            loveReasons[index],
                            style: ItalianaStyle.bold(
                              size: appW(16),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FloatingHearts extends StatefulWidget {
  const FloatingHearts({super.key});

  @override
  State<FloatingHearts> createState() => _FloatingHeartsState();
}

class _FloatingHeartsState extends State<FloatingHearts> with TickerProviderStateMixin {
  final List<Widget> _hearts = [];

  @override
  void initState() {
    super.initState();
    _startSpawningHearts();
  }

  void _startSpawningHearts() {
    Timer.periodic(const Duration(milliseconds: 800), (timer) {
      if (mounted) {
        final heart = _AnimatedHeart(
          key: UniqueKey(),
          left: Random().nextDouble() * MediaQuery.of(context).size.width,
        );
        setState(() {
          if (_hearts.length > 1000) _hearts.removeAt(0);
          _hearts.add(heart);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _hearts,
    );
  }
}

class _AnimatedHeart extends StatefulWidget {
  final double left;

  const _AnimatedHeart({super.key, required this.left});

  @override
  State<_AnimatedHeart> createState() => _AnimatedHeartState();
}

class _AnimatedHeartState extends State<_AnimatedHeart> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bottomAnimation;
  late Animation<double> _opacityAnimation;
  late double _size;

  @override
  void initState() {
    super.initState();

    _size = 20 + Random().nextDouble() * 15;

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );

    _bottomAnimation = Tween<double>(begin: 0, end: 400).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _opacityAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.6, 1)),
    );

    _controller.forward();
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
        return Positioned(
          bottom: _bottomAnimation.value,
          left: widget.left,
          child: Opacity(
            opacity: _opacityAnimation.value,
            child: Icon(
              Icons.favorite,
              color: Colors.pinkAccent.withOpacity(0.6),
              size: _size,
            ),
          ),
        );
      },
    );
  }
}
