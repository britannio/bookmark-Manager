import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import '../model/bookmark.dart';

@Component(
    selector: 'bm-scaffold',
    templateUrl: 'bm_scaffold_component.html',
    directives: [coreDirectives, formDirectives]
    // allows us to display dart variables in html and control forms
    )
class BookmarkScaffoldComponent {
  final List<Bookmark> bookmarks = [
    Bookmark(
      title: 'My Site',
      description: 'Coming Soon',
      url: 'https://britannio.com',
      edit: false,
    ),
    Bookmark(
      title: 'Creative Bracket',
      description:
          'Go-to Dart blog containing Dart resources for beginners and beyond',
      url: 'https://creativebracket.com',
      edit: false,
    ),
    Bookmark(
      title: 'Dartlang Home',
      description: 'Documentation website for the Dart language and tools',
      url: 'https://dartlang.org',
      edit: false,
    ),
    Bookmark(
      title: 'Flutter',
      description: 'Build native mobile apps with the Flutter SDK',
      url: 'https://flutter.io',
      edit: false,
    )
  ];

  Bookmark editedBookmark;

  void addBookmark() {
    var bm = Bookmark();
    bookmarks.add(bm);
    editedBookmark = Bookmark(
      title: bm.title,
      description: bm.description,
      edit: bm.edit,
      url: bm.url,
    );
  }

  void removeBookmark(int index) => bookmarks.removeAt(index);

  void editBookmark(int index) {
    editedBookmark = Bookmark(
      title: bookmarks[index].title,
      description: bookmarks[index].description,
      edit: bookmarks[index].edit,
      url: bookmarks[index].url,
    );
    bookmarks[index].edit = true;
  }

  void updateBookmark(int index) {
    bookmarks[index] = Bookmark(
      description: editedBookmark.description,
      edit: editedBookmark.edit,
      title: editedBookmark.title,
      url: editedBookmark.url,
    );
    bookmarks[index].edit = false;
  }
}
