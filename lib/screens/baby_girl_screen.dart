import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/app_text_styles.dart';
import '../widgets/celebration_button.dart';
import '../widgets/decorative_background.dart';
import 'surprise_screen.dart';

class BabyGirlScreen extends StatelessWidget {
  const BabyGirlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: DecorativeBackground(
              child: SafeArea(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 24,
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 720),
                      child: Column(
                        children: [
                          _buildTopLabel(),
                          const SizedBox(height: 22),
                          _buildWelcomeCard(context),
                          const SizedBox(height: 22),
                          const Text(
                            'Choti si jaan, dher saara pyaar. 💗',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primaryDark,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'A little website made with a whole lot of love. ♡',
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
          const Positioned.fill(child: IgnorePointer(child: _FloatingHearts())),
        ],
      ),
    );
  }

  Widget _buildTopLabel() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('🌸', style: TextStyle(fontSize: 20)),
        SizedBox(width: 10),
        Flexible(
          child: Text(
            'A LITTLE MIRACLE, A LOT OF LOVE',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryDark,
              fontSize: 12,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text('🌸', style: TextStyle(fontSize: 20)),
      ],
    );
  }

  Widget _buildWelcomeCard(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value.clamp(0.0, 1.0),
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: child,
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.94),
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: AppColors.border, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withValues(alpha: 0.15),
              blurRadius: 32,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Column(
          children: [
            const Text('🎀  💗  🎀', style: TextStyle(fontSize: 25)),
            const SizedBox(height: 16),
            Text(
              'SOMEONE VERY SPECIAL\nHAS ARRIVED',
              textAlign: TextAlign.center,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.primaryDark,
                letterSpacing: 2,
                height: 1.8,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 24),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeOutCubic,
              builder: (context, value, child) {
                return Opacity(
                  opacity: value.clamp(0.0, 1.0),
                  child: Transform.scale(
                    scale: 0.88 + (0.12 * value),
                    child: child,
                  ),
                );
              },
              child: _buildBabyPortrait(),
            ),
            const SizedBox(height: 26),
            const Text(
              'Alhamdulillah,',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryDark,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.85, end: 1.0),
              duration: const Duration(milliseconds: 1000),
              curve: Curves.elasticOut,
              builder: (context, value, child) {
                return Opacity(
                  opacity: value.clamp(0.0, 1.0),
                  child: Transform.scale(scale: value, child: child),
                );
              },
              child: Text(
                'It’s a Baby Girl! 💕',
                textAlign: TextAlign.center,
                style: AppTextStyles.heroTitle.copyWith(
                  fontSize: 38,
                  height: 1.25,
                  color: AppColors.primaryDark,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'A tiny little hand to hold, a little smile to fall in love '
              'with, and a whole lifetime of beautiful memories waiting '
              'to be made.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
                height: 1.8,
              ),
            ),
            const SizedBox(height: 22),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: AppColors.border.withValues(alpha: 0.8),
                ),
              ),
              child: const Column(
                children: [
                  Text('🤲🏻', style: TextStyle(fontSize: 28)),
                  SizedBox(height: 10),
                  Text(
                    'May Allah bless this little angel with a life full '
                    'of health, happiness, love, and countless blessings.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 15,
                      height: 1.8,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Allah hamesha apni hifazat mein rakhay. Ameen. ❤️',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.primaryDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 1.7,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'To the beautiful mama and her little princess,',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 9),
            const Text(
              'This little corner of the internet is filled with love, '
              'happiness, and duas just for you both. '
              'There is something special waiting inside… 🎁',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.8,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 28),
            CelebrationButton(
              text: 'Open Your Little Surprise',
              icon: Icons.card_giftcard_rounded,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SurpriseScreen()),
                );
              },
            ),
            const SizedBox(height: 20),
            const Wrap(
              alignment: WrapAlignment.center,
              spacing: 12,
              runSpacing: 8,
              children: [
                _LoveDecoration(emoji: '💗'),
                _LoveDecoration(emoji: '🌷'),
                _LoveDecoration(emoji: '🧸'),
                _LoveDecoration(emoji: '🦋'),
                _LoveDecoration(emoji: '💕'),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Made with love, just for you',
              style: AppTextStyles.caption.copyWith(
                fontStyle: FontStyle.italic,
                color: AppColors.primaryDark,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBabyPortrait() {
    return SizedBox(
      width: 290,
      height: 305,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 270,
            height: 285,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.backgroundSoft,
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.22),
                  blurRadius: 32,
                  spreadRadius: 5,
                ),
              ],
            ),
          ),
          Container(
            width: 255,
            height: 275,
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(135),
              border: Border.all(color: AppColors.border, width: 2.5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(130),
              child: Image.asset(
                'assets/images/baby_girl.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.child_care_rounded,
                      color: AppColors.primaryDark,
                      size: 110,
                    ),
                  );
                },
              ),
            ),
          ),
          const Positioned(
            top: 0,
            right: 8,
            child: _FloatingDecoration(
              icon: Icons.auto_awesome_rounded,
              size: 32,
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 0,
            child: _FloatingDecoration(icon: Icons.favorite_rounded, size: 32),
          ),
          const Positioned(
            top: 65,
            left: -2,
            child: _FloatingDecoration(
              icon: Icons.local_florist_rounded,
              size: 27,
            ),
          ),
          const Positioned(
            bottom: 38,
            right: -2,
            child: _FloatingDecoration(icon: Icons.favorite_rounded, size: 23),
          ),
          const Positioned(
            top: 38,
            left: 25,
            child: Text('💕', style: TextStyle(fontSize: 21)),
          ),
          const Positioned(
            bottom: 3,
            right: 35,
            child: Text('🌸', style: TextStyle(fontSize: 23)),
          ),

          const Positioned(
            top: 28,
            left: 55,
            child: _TwinklingSparkle(size: 14, delay: 0),
          ),
          const Positioned(
            top: 18,
            right: 58,
            child: _TwinklingSparkle(size: 19, delay: 350),
          ),
          const Positioned(
            bottom: 65,
            left: 18,
            child: _TwinklingSparkle(size: 12, delay: 700),
          ),
          const Positioned(
            bottom: 58,
            right: 25,
            child: _TwinklingSparkle(size: 16, delay: 500),
          ),
        ],
      ),
    );
  }
}

class _FloatingDecoration extends StatelessWidget {
  const _FloatingDecoration({required this.icon, required this.size});

  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: AppColors.heart,
      size: size,
      shadows: const [Shadow(color: Colors.white, blurRadius: 8)],
    );
  }
}

class _LoveDecoration extends StatelessWidget {
  const _LoveDecoration({required this.emoji});

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Text(emoji, style: const TextStyle(fontSize: 23));
  }
}

class _FloatingHearts extends StatefulWidget {
  const _FloatingHearts();

  @override
  State<_FloatingHearts> createState() => _FloatingHeartsState();
}

class _FloatingHeartsState extends State<_FloatingHearts>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  static const List<_HeartSpec> _hearts = [
    _HeartSpec(leftFactor: 0.08, phase: 0.00, size: 19),
    _HeartSpec(leftFactor: 0.22, phase: 0.42, size: 13),
    _HeartSpec(leftFactor: 0.39, phase: 0.72, size: 17),
    _HeartSpec(leftFactor: 0.57, phase: 0.18, size: 14),
    _HeartSpec(leftFactor: 0.73, phase: 0.58, size: 20),
    _HeartSpec(leftFactor: 0.91, phase: 0.32, size: 15),
    _HeartSpec(leftFactor: 0.48, phase: 0.88, size: 11),
  ];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 11),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        return AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              clipBehavior: Clip.hardEdge,
              children: _hearts.map((heart) {
                final progress = (_controller.value + heart.phase) % 1.0;

                final fadeIn = (progress / 0.12).clamp(0.0, 1.0);

                final fadeOut = ((1.0 - progress) / 0.16).clamp(0.0, 1.0);

                final opacity = (fadeIn * fadeOut * 0.62).clamp(0.0, 0.62);

                return Positioned(
                  left: width * heart.leftFactor,
                  bottom: height * progress,
                  child: Opacity(
                    opacity: opacity,
                    child: Transform.rotate(
                      angle: (progress - 0.5) * 0.45,
                      child: Icon(
                        Icons.favorite_rounded,
                        size: heart.size,
                        color: AppColors.heart,
                        shadows: const [
                          Shadow(color: Colors.white, blurRadius: 8),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          },
        );
      },
    );
  }
}

class _HeartSpec {
  const _HeartSpec({
    required this.leftFactor,
    required this.phase,
    required this.size,
  });

  final double leftFactor;
  final double phase;
  final double size;
}

class _TwinklingSparkle extends StatefulWidget {
  const _TwinklingSparkle({required this.size, required this.delay});

  final double size;
  final int delay;

  @override
  State<_TwinklingSparkle> createState() => _TwinklingSparkleState();
}

class _TwinklingSparkleState extends State<_TwinklingSparkle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1400 + widget.delay),
    );

    _animation = Tween<double>(
      begin: 0.25,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Icon(
        Icons.auto_awesome_rounded,
        size: widget.size,
        color: const Color(0xFFFFC857),
        shadows: const [Shadow(color: Color(0xFFFFD980), blurRadius: 12)],
      ),
    );
  }
}
