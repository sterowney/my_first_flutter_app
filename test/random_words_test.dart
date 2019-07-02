import 'package:flutter/material.dart';
import 'package:my_first_app/random_words.dart';
import 'package:my_first_app/random_words_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:english_words/english_words.dart';

void main() {

  Future<Null> createSUT(WidgetTester tester, {List<WordPair> suggestions}) async {

    await tester.pumpWidget(
      new MaterialApp(
        home: new Material(
          child: new RandomWords()
        )
      )
    );

    final bool setSuggestions = suggestions != null && suggestions.isNotEmpty;

    if (setSuggestions) {
      final RandomWordsState randomWordsState = tester.state<RandomWordsState>(find.byType(RandomWords));
      randomWordsState.setState(() {
        if (setSuggestions) {
          randomWordsState.suggestions = suggestions;
        }
      });
    }
  }

  testWidgets('Renders suggestions on first load', (WidgetTester tester) async {
    await createSUT(tester);
    expect(find.byKey(const Key('random-words-list')), findsOneWidget);
    
  });
}
