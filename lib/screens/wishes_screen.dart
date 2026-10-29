import 'package:flutter/material.dart';

import 'dart:math' as math;

import '../styles/app_colors.dart';

class WishesScreen extends StatelessWidget {
  const WishesScreen({super.key});

  static const List<Map<String, dynamic>> wishes = [
    {
      'emoji': '🤲🏻',
      'title': 'A Dua for Your Little Princess',
      'english':
          'May Allah protect your little girl at every step of her life, '
          'keep her safe from every harm, and surround her with love, '
          'kindness, and happiness.',
      'urdu':
          'Allah usay hamesha apni hifazat mein rakhay, uski qismat '
          'mein dher saari khushiyan likhay, aur usay duniya ki har '
          'buri nazar se bachaye.',
      'ending': 'Ameen, ya Rabb-ul-Alameen. 💗',
    },
    {
      'emoji': '🌸',
      'title': 'For the New Mama',
      'english':
          'May Allah give you strength on your difficult days, peace '
          'when you feel tired, and countless reasons to smile. '
          'May you always feel proud of the beautiful mother you are.',
      'urdu':
          'Allah tumhein hamesha himmat, sukoon aur khushiyan de. '
          'Jab bhi thak jao, Allah tumhare dil ko sukoon de aur '
          'tumhari har mushkil asaan kar de.',
      'ending': 'You deserve so much happiness, mama. ❤️',
    },
    {
      'emoji': '🧸',
      'title': 'May Her Life Be Beautiful',
      'english':
          'May she grow up with a heart full of kindness, a smile '
          'that lights up every room, and the courage to follow '
          'her dreams. May she always know how deeply she is loved.',
      'urdu':
          'Allah usay naik, khush-naseeb aur dil ki bohat achi '
          'insaan banaye. Uski zindagi ko itna khoobsurat banaye '
          'ke woh hamesha shukar ada karti rahay.',
      'ending': 'May every beautiful dream come true. ✨',
    },
    {
      'emoji': '💞',
      'title': 'A Lifetime of Togetherness',
      'english':
          'May your little girl always find comfort in your arms. '
          'May you get to see her first smile, hear her first words, '
          'hold her little hand, and watch her become everything '
          'she dreams of being.',
      'urdu':
          'Allah tum dono ka rishta hamesha mohabbat se bharay '
          'rakhay. Tum uski har pehli khushi dekho, uski har '
          'kamiyabi par muskurao, aur uske saath bohat '
          'saari khoobsurat yaadein banao.',
      'ending': 'May you both always be each other’s happiness. 🥹',
    },
    {
      'emoji': '🌙',
      'title': 'For Her Future',
      'english':
          'May Allah write a future for her more beautiful than '
          'anything you could ever imagine. May good people find '
          'her, may good things come her way, and may her heart '
          'always find peace.',
      'urdu':
          'Ya Allah, is choti si jaan ke naseeb achay karna. '
          'Isay sehat, lambi aur barkat wali zindagi, halal '
          'khushiyan, kamiyabi aur dil ka sukoon ata farmana.',
      'ending': 'Ameen sum Ameen. 🤲🏻',
    },
    {
      'emoji': '💕',
      'title': 'One Last Little Prayer',
      'english':
          'May your home always be filled with little giggles, '
          'tiny footsteps, warm hugs, and the kind of happiness '
          'that makes you stop for a moment and thank Allah '
          'for everything He has given you.',
      'urdu':
          'Allah tumhare ghar ko hamesha bachon ki hansi, '
          'mohabbat, rehmat aur barkat se bharay rakhay. '
          'Tumhari beti tumhari aankhon ki thandak aur '
          'dil ki sab se pyari khushi banay.',
      'ending': 'Ameen, Ameen, ya Allah. ❤️',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFFF1F6),
                  Color(0xFFFFE0EC),
                  Color(0xFFFFF7FA),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 35,
            left: 20,
            child: _FloatingHeart(emoji: '💕', size: 30),
          ),
          const Positioned(
            top: 100,
            right: 24,
            child: _FloatingHeart(emoji: '🌸', size: 34),
          ),
          const Positioned(
            top: 300,
            left: 12,
            child: _FloatingHeart(emoji: '💗', size: 23),
          ),
          const Positioned(
            bottom: 100,
            right: 18,
            child: _FloatingHeart(emoji: '🦋', size: 28),
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          'Made with love, just for you',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primaryDark,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.popUntil(
                          context,
                          (route) => route.isFirst,
                        ),
                        icon: const Icon(
                          Icons.home_rounded,
                          color: AppColors.primaryDark,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 14, 20, 30),
                    children: [
                      const Text(
                        'A Little Bundle\nof Duas 💗',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          height: 1.2,
                          fontWeight: FontWeight.w800,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'For you and your precious little girl',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.primaryDark,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Some wishes are too precious to just say once. '
                        'So here are a few duas for your little princess '
                        'and the beautiful journey of motherhood. 🤲🏻',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.7,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 26),
                      ...wishes.map(
                        (wish) => _WishCard(
                          emoji: wish['emoji'] as String,
                          title: wish['title'] as String,
                          english: wish['english'] as String,
                          urdu: wish['urdu'] as String,
                          ending: wish['ending'] as String,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFFFD5E5), Color(0xFFFFEAF2)],
                          ),
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: const Color(0xFFF5C9DA)),
                        ),
                        child: const Column(
                          children: [
                            Text('💗 🧸 💗', style: TextStyle(fontSize: 30)),
                            SizedBox(height: 16),
                            Text(
                              'For My Little Princess',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            SizedBox(height: 14),
                            Text(
                              'Choti si jaan, Allah tumhein hamesha '
                              'khush rakhay. Tumhari zindagi mohabbat, '
                              'sehat, rehmat aur barkat se bhari rahay. '
                              'Tumhari mama ki muskurahat ki wajah '
                              'bano aur unke dil ki sab se pyari dua '
                              'hamesha qabool hoti rahay.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.9,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Ameen, Ameen, Sum Ameen. 🤲🏻❤️',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: AppColors.primaryDark,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Text(
                        'Sending you both all the love in the world 💕',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: ElevatedButton.icon(
                          onPressed: () => Navigator.popUntil(
                            context,
                            (route) => route.isFirst,
                          ),
                          icon: const Icon(Icons.favorite_rounded),
                          label: const Text('Back to the Beginning'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Made with love, from the heart. 💗',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const Positioned.fill(child: _FallingPetals()),
        ],
      ),
    );
  }
}

class _WishCard extends StatefulWidget {
  const _WishCard({
    required this.emoji,
    required this.title,
    required this.english,
    required this.urdu,
    required this.ending,
  });

  final String emoji;
  final String title;
  final String english;
  final String urdu;
  final String ending;

  @override
  State<_WishCard> createState() => _WishCardState();
}

class _WishCardState extends State<_WishCard>
    with SingleTickerProviderStateMixin {
  bool _isLoved = false;

  late final AnimationController _heartController;
  late final Animation<double> _heartScale;

  @override
  void initState() {
    super.initState();

    _heartController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    _heartScale = Tween<double>(
      begin: 1.0,
      end: 1.35,
    ).animate(CurvedAnimation(parent: _heartController, curve: Curves.easeOut));
  }

  @override
  void dispose() {
    _heartController.dispose();
    super.dispose();
  }

  void _toggleHeart() {
    setState(() {
      _isLoved = !_isLoved;
    });

    if (_isLoved) {
      _heartController.forward(from: 0).then((_) {
        if (mounted) {
          _heartController.reverse();
        }
      });
    } else {
      _heartController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.09),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.emoji, style: const TextStyle(fontSize: 29)),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: _toggleHeart,
                child: ScaleTransition(
                  scale: _heartScale,
                  child: Icon(
                    _isLoved
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    size: 29,
                    color: AppColors.heart,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            widget.english,
            style: const TextStyle(
              fontSize: 15,
              height: 1.8,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 14),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Text(
              widget.urdu,
              style: const TextStyle(
                fontSize: 15,
                height: 1.9,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          const SizedBox(height: 17),
          Text(
            widget.ending,
            style: const TextStyle(
              fontSize: 15,
              height: 1.6,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryDark,
            ),
          ),
        ],
      ),
    );
  }
}

class _FloatingHeart extends StatelessWidget {
  const _FloatingHeart({required this.emoji, required this.size});

  final String emoji;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Opacity(
        opacity: 0.75,
        child: Text(emoji, style: TextStyle(fontSize: size)),
      ),
    );
  }
}

class _FallingPetals extends StatefulWidget {
  const _FallingPetals();

  @override
  State<_FallingPetals> createState() => _FallingPetalsState();
}

class _FallingPetalsState extends State<_FallingPetals>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 14),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: _PetalPainter(progress: _controller.value),
            size: Size.infinite,
          );
        },
      ),
    );
  }
}

class _PetalPainter extends CustomPainter {
  const _PetalPainter({required this.progress});

  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    if (size.width <= 0 || size.height <= 0) return;

    const petalCount = 22;

    const colors = [
      Color(0xFFFF9EC5),
      Color(0xFFFFC0D9),
      Color(0xFFFFD6E5),
      Color(0xFFF58CB5),
      Color(0xFFFFB4CE),
    ];

    for (int i = 0; i < petalCount; i++) {
      final seed = i * 73.7;

      final verticalProgress = (progress + i / petalCount) % 1.0;

      final y = verticalProgress * (size.height + 40) - 20;

      final baseX = (seed % (size.width + 20)) - 10;

      final sway = math.sin(progress * 2 * math.pi + i * 1.7) * 25;

      final x = baseX + sway;

      final petalWidth = 5.0 + (i % 4) * 1.3;
      final petalHeight = 9.0 + (i % 3) * 2.0;

      final opacity = 0.32 + (i % 3) * 0.09;

      final paint = Paint()
        ..color = colors[i % colors.length].withValues(alpha: opacity);

      canvas.save();
      canvas.translate(x, y);

      canvas.rotate(progress * 2 * math.pi + i * 0.8);

      canvas.drawOval(
        Rect.fromCenter(
          center: Offset.zero,
          width: petalWidth,
          height: petalHeight,
        ),
        paint,
      );

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant _PetalPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
