class Article {
  int? _id;
  String? _title;
  String? _byline;
  String? _publishedDate;
  String? _section;

  Article({
    int? id,
    String? publishedDate,
    String? section,
    String? byline,
    String? title,
  }) {
    if (id != null) {
      this._id = id;
    }

    if (publishedDate != null) {
      this._publishedDate = publishedDate;
    }
    if (byline != null) {
      this._byline = byline;
    }
    if (section != null) {
      this._section = section;
    }
    if (title != null) {
      this._title = title;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;

  String? get publishedDate => _publishedDate;
  set publishedDate(String? publishedDate) => _publishedDate = publishedDate;

  String? get section => _section;
  set section(String? section) => _section = section;

  String? get byline => _byline;
  set byline(String? byline) => _byline = byline;
  String? get title => _title;
  set title(String? title) => _title = title;

  Article.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _publishedDate = json['published_date'];

    _section = json['section'];
    _byline = json['byline'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['published_date'] = this._publishedDate;
    data['section'] = this._section;
    data['byline'] = this._byline;
    data['title'] = this._title;
    return data;
  }
}
