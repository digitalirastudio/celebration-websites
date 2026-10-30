import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import 'baby_girl_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late final AnimationController _curtainController;
  late final AnimationController _bowController;

  @override
  void initState() {
    super.initState();
    _curtainController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );
    _bowController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    )..repeat(reverse: true);
  }

  @override
  @override
  void dispose() {
    _curtainController.dispose();
    _bowController.dispose();
    super.dispose();
  }

  Future<void> _openCurtains() async {
    if (_curtainController.isAnimating || _curtainController.isCompleted) {
      return;
    }

    await _curtainController.forward();
    if (!mounted) return;

    await Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(builder: (_) => const BabyGirlScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('welcome-screen'),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final panelWidth = constraints.maxWidth / 2;

          return Stack(
            fit: StackFit.expand,
            children: [
              const _CurtainReveal(),
              AnimatedBuilder(
                animation: _curtainController,
                builder: (context, child) {
                  final progress = Curves.easeInOutCubic.transform(
                    _curtainController.value,
                  );

                  return Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        bottom: 0,
                        width: panelWidth,
                        child: Transform.translate(
                          offset: Offset(-panelWidth * progress, 0),
                          child: const _CurtainPanel(isLeft: true),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        width: panelWidth,
                        child: Transform.translate(
                          offset: Offset(panelWidth * progress, 0),
                          child: const _CurtainPanel(isLeft: false),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 52),
                    const Text(
                      'A LITTLE MIRACLE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 4,
                        shadows: [
                          Shadow(color: AppColors.primaryDark, blurRadius: 12),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Semantics(
                      button: true,
                      label: 'Open the pink curtains',
                      child: InkWell(
                        key: const Key('open-curtains-button'),
                        onTap: _openCurtains,
                        borderRadius: BorderRadius.circular(80),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AnimatedBuilder(
                                animation: _bowController,
                                builder: (context, child) {
                                  final scale =
                                      1.0 + (_bowController.value * 0.07);

                                  return Transform.scale(
                                    scale: scale,
                                    child: child,
                                  );
                                },
                                child: SizedBox(
                                  width: 112,
                                  height: 64,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      // Left ribbon tail
                                      Positioned(
                                        left: 27,
                                        top: 23,
                                        child: Transform.rotate(
                                          angle: 0.25,
                                          child: const _BowTail(),
                                        ),
                                      ),

                                      // Right ribbon tail
                                      Positioned(
                                        right: 27,
                                        top: 23,
                                        child: Transform.rotate(
                                          angle: -0.25,
                                          child: const _BowTail(),
                                        ),
                                      ),

                                      // Bow loops
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Transform.rotate(
                                            angle: -0.35,
                                            child: const _BowLoop(),
                                          ),
                                          const SizedBox(width: 4),
                                          Transform.rotate(
                                            angle: 0.35,
                                            child: const _BowLoop(),
                                          ),
                                        ],
                                      ),

                                      // Bow center
                                      Positioned(
                                        top: 12,
                                        child: Container(
                                          width: 24,
                                          height: 23,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFF0F5),
                                            borderRadius: BorderRadius.circular(
                                              9,
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFFD95689),
                                              width: 2,
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.favorite_rounded,
                                            color: AppColors.heart,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(0, -8),
                                child: Container(
                                  width: 30,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFF0F5),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: const Color(0xFFD95689),
                                      width: 2,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x553F1730),
                                        blurRadius: 12,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.favorite_rounded,
                                    color: AppColors.heart,
                                    size: 17,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'TAP THE BOW TO OPEN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                  shadows: [
                                    Shadow(
                                      color: AppColors.primaryDark,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 42),
                      child: Text(
                        'A special surprise is waiting for you',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                              color: AppColors.primaryDark,
                              blurRadius: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CurtainPanel extends StatelessWidget {
  const _CurtainPanel({required this.isLeft});

  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: isLeft ? Alignment.centerLeft : Alignment.centerRight,
          end: isLeft ? Alignment.centerRight : Alignment.centerLeft,
          colors: const [
            Color(0xFFB83F73),
            Color(0xFFE979A5),
            Color(0xFFD95589),
            Color(0xFFF49ABB),
            Color(0xFFC84E80),
          ],
          stops: const [0, 0.2, 0.47, 0.72, 1],
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          for (var index = 0; index < 5; index++)
            Align(
              alignment: Alignment(-1 + (index * 0.5), 0),
              child: Container(
                width: 2,
                height: double.infinity,
                color: Colors.white.withValues(alpha: 0.12),
              ),
            ),
          Align(
            alignment: isLeft ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 14,
              height: double.infinity,
              color: const Color(0x33963761),
            ),
          ),
        ],
      ),
    );
  }
}

class _BowLoop extends StatelessWidget {
  const _BowLoop();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 34,
      decoration: BoxDecoration(
        color: const Color(0xFFFFF0F5),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFFD95689), width: 2),
        boxShadow: const [
          BoxShadow(
            color: Color(0x553F1730),
            blurRadius: 12,
            offset: Offset(0, 5),
          ),
        ],
      ),
    );
  }
}

class _CurtainReveal extends StatelessWidget {
  const _CurtainReveal();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFE6EF), Color(0xFFFFF6F8), Color(0xFFFFDCE8)],
        ),
      ),
      child: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withValues(alpha: 0.75),
          ),
          child: const Icon(
            Icons.child_friendly_rounded,
            color: AppColors.primary,
            size: 78,
          ),
        ),
      ),
    );
  }
}

class _BowTail extends StatelessWidget {
  const _BowTail();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 29,
      decoration: BoxDecoration(
        color: const Color(0xFFFFF0F5),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(4),
          bottomRight: Radius.circular(4),
        ),
        border: Border.all(color: const Color(0xFFD95689), width: 1.5),
      ),
    );
  }
}
