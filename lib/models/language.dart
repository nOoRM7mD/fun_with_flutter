
class Language {
  final String name;
  final String desc;

  Language(this.name, this.desc);

  Language.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        desc = json['desc'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'desc': desc,
      };
}
