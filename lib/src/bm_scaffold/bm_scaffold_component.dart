import 'package:angular/angular.dart';

@Component(
  selector: 'bm-scaffold',
  templateUrl: 'bm_scaffold_component.html',
  directives: [coreDirectives] // allows us to display the data that's here
)
class BookmarkScaffoldComponent {
  final List bookmarks = [
    {
      'title': 'My Site',
      'description':
          'Coming Soon',
      'url': 'https://britannio.com',
    },
    {
      'title': 'Creative Bracket',
      'description':
          'Go-to Dart blog containing Dart resources for beginners and beyond',
      'url': 'https://creativebracket.com',
    },
    {
      'title': 'Dartlang Home',
      'description': 'Documentation website for the Dart language and tools',
      'url': 'https://dartlang.org',
    },
    {
      'title': 'Flutter',
      'description': 'Build native mobile apps with the Flutter SDK',
      'url': 'https://flutter.dev',
    }
  ];

  void removeBookmark(int index) {
    bookmarks.removeAt(index);
  }

}