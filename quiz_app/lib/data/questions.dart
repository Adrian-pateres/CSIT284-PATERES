import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter?',
    ['Widgets', 'Components', 'Elements', 'Modules']
  ),
  QuizQuestion(
    'How are flutter UIs built?',
    ['By combining widgets in code', 'By combining widgets in a visual editor', 'By defining widgets in config files', 'By using XCode for iOS and Android Studio for Android']
  ),
  QuizQuestion(
  'What is the purpose of a StatefulWidget in Flutter?',
  ['Update UI as data changes', 'Update data as UI changes', 'Ignore data changes', 'Render UI that does not depend on data']
  ),
  QuizQuestion(
    'Which widget should you try to use more often?',
    ['StatelessWidget', 'StatefulWidget', 'Both are equally good', 'None of the above'],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    ['The UI is not updated', 'The UI is updated', 'The closest StatefulWidget is updated', 'Any nested StatefulWidgets are updated'],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    ['By calling setState()', 'By calling updateData()', 'By calling updateUI()', 'By calling updateState()'],
  ),
  QuizQuestion(
    'What programming language is used to build Flutter apps?',
    ['Dart', 'Java', 'Kotlin', 'Swift'],
  ),
  QuizQuestion(
    'Which command is used to compile a Flutter app?',
    ['flutter build', 'flutter compile', 'flutter run', 'flutter make'],
  ),
  QuizQuestion(
    'What is the pubspec.yaml file used for?',
    ['Managing project dependencies', 'Writing Dart code', 'Designing the UI', 'Configuring Android permissions'],
  ),
  QuizQuestion(
    'What is the purpose of the main() function in Dart?',
    ['It is the entry point of the application', 'It creates the material app', 'It holds the state of the app', 'It parses JSON data'],
  ),
];