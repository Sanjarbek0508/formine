import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:mylove/const/colors.dart';
import 'package:mylove/pages/gallery_screen.dart';
import 'package:mylove/pages/home_screen.dart';
import 'package:mylove/pages/feelings_screen.dart';
import 'package:mylove/pages/why_you.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentIndex = useState(0);

    final screens = [
      HomeScreen(),
      MyFeelingTowardsYou(),
      WhyYouScreen(),
    ];

    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) => currentIndex.value = index,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        onTap: (index) {
          currentIndex.value = index;
          pageController.jumpToPage(index);
        },
        selectedItemColor: AppColors.heartPink,
        unselectedItemColor: CupertinoColors.white,
        backgroundColor: AppColors.midnightBlue,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.cloud),
            label: "My Feelings",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusBold.heart),
            label: "Why You",
          ),
        ],
      ),
    );
  }
}
