import 'package:celebration_websites/main.dart';
import 'package:celebration_websites/screens/baby_girl_screen.dart';
import 'package:celebration_websites/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('opens the curtains and navigates to the baby girl screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(WelcomeScreen), findsOneWidget);
    expect(find.byType(BabyGirlScreen), findsNothing);

    await tester.tap(find.byKey(const Key('open-curtains-button')));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 1500));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));
    await tester.pump(const Duration(milliseconds: 800));

    expect(find.byType(BabyGirlScreen), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Image &&
            widget.image is AssetImage &&
            (widget.image as AssetImage).assetName ==
                'assets/images/baby_girl.png',
      ),
      findsOneWidget,
    );
    expect(
      tester
          .widget<MaterialApp>(find.byType(MaterialApp))
          .debugShowCheckedModeBanner,
      isFalse,
    );
  });
}
