import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';
import '../widgets/celebration_button.dart';
import '../widgets/decorative_background.dart';
import 'wishes_screen.dart';

class SurpriseScreen extends StatelessWidget {
  const SurpriseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecorativeBackground(
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(18),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 650),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.95),
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: AppColors.border, width: 1.5),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.14),
                        blurRadius: 30,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 12,
                        children: [
                          Text('🌷', style: TextStyle(fontSize: 25)),
                          Text('💗', style: TextStyle(fontSize: 30)),
                          Text('🎀', style: TextStyle(fontSize: 32)),
                          Text('💗', style: TextStyle(fontSize: 30)),
                          Text('🌷', style: TextStyle(fontSize: 25)),
                        ],
                      ),
                      const SizedBox(height: 22),
                      Text(
                        'A LITTLE SURPRISE, JUST FOR YOU',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.primaryDark,
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 24),

                      TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0.0, end: 1.0),
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.easeInOut,
                        builder: (context, value, child) {
                          final bounce = 1.0 + (0.045 * value);

                          return Transform.translate(
                            offset: Offset(0, -8 * value),
                            child: Transform.scale(scale: bounce, child: child),
                          );
                        },
                        child: Container(
                          width: 178,
                          height: 178,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFFFE5EF),
                                Color(0xFFFFC9DE),
                                Color(0xFFFFF1F6),
                              ],
                            ),
                            border: Border.all(
                              color: AppColors.border,
                              width: 3,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.heart.withValues(alpha: 0.22),
                                blurRadius: 28,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text('🎁', style: TextStyle(fontSize: 88)),
                          ),
                        ),
                      ),

                      const SizedBox(height: 26),
                      Text(
                        'Alhamdulillah! ❤️',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.subtitle.copyWith(
                          fontSize: 21,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Congratulations, Mama!',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.heroTitle.copyWith(
                          fontSize: 34,
                          height: 1.25,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Your first little princess is here. 🥹💕',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 26),
                      Container(
                        width: 70,
                        height: 4,
                        decoration: BoxDecoration(
                          color: AppColors.flower,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Aik nanhi si jaan, itni saari khushiyan. '
                        'Ek choti si muskurahat jo tumhari poori duniya '
                        'ko roshan kar de. Aur ek aisa rishta jo har '
                        'guzartay din ke saath aur gehra hota jaye. 💗',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.9,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Your arms have a new little reason to feel '
                        'full, your heart has a new kind of love, '
                        'and your life has a thousand beautiful firsts '
                        'waiting for you both.',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.body,
                      ),
                      const SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(color: AppColors.border),
                        ),
                        child: const Column(
                          children: [
                            Text('🤲🏻🌸🤲🏻', style: TextStyle(fontSize: 26)),
                            SizedBox(height: 13),
                            Text(
                              'Ya Allah, is pyari si beti ko hamesha '
                              'sehat, khushiyan aur apni hifazat mein '
                              'rakhna. Iski zindagi ko rehmat aur '
                              'barkat se bhar dena.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'May she always be surrounded by love, '
                              'grow up with a peaceful heart, and find '
                              'goodness wherever life takes her.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                height: 1.8,
                                color: AppColors.textSecondary,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              'Ameen, Ameen, Sum Ameen. ❤️',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: AppColors.primaryDark,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'One tiny girl. A million reasons to smile. '
                        'A lifetime of duas. 💕',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          height: 1.7,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Aur abhi toh bohat saari pyari baatein baqi hain… '
                        'tumhare liye kuch khaas duaein bhi hain. 🌸',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.8,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 28),
                      CelebrationButton(
                        text: 'Read Her Wishes',
                        icon: Icons.favorite_rounded,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const WishesScreen(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 14),
                      TextButton.icon(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_rounded),
                        label: const Text('Back to Welcome'),
                        style: TextButton.styleFrom(
                          foregroundColor: AppColors.primaryDark,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Made with love, for two beautiful hearts. 💗',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.caption,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
