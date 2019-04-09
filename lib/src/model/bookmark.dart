class Bookmark {
  String title = '';
  String description = '';
  String url = '';
  bool edit;

  Bookmark({
    this.title,
    this.description,
    this.url,
    this.edit = true,
  });
}
