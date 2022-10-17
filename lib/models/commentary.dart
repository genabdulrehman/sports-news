class CommentaryModel {
  final id;
  final type;

  /// is goal or card ( yellow , red )
  final body;
  final time;

  CommentaryModel({
    this.id,
    this.type,
    this.body,
    this.time,
  });
}
