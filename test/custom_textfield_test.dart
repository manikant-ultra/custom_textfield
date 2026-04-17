import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_custom_textfield_ui/custom_textfield.dart';

void main() {
  testWidgets('CustomTextField renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CustomTextField(
            label: "Test Label",
            hintText: "Enter text",
          ),
        ),
      ),
    );

    expect(find.text("Test Label"), findsOneWidget);
    expect(find.byType(TextFormField), findsOneWidget);
  });
}