class GitaModal {
  late List<ChapterDetails> Chapters;

  GitaModal({required this.Chapters});

  factory GitaModal.fromjson(Map m1) {
    return GitaModal(
        Chapters: (m1['Chapters'] as List)
            .map(
              (e) => ChapterDetails.fromjson(e),
            )
            .toList());
  }
}

class ChapterDetails {
  late int ChapterNumber;
  late String ChapterName;
  late List<Slok> Verses;

  ChapterDetails(
      {required this.ChapterNumber,
      required this.ChapterName,
      required this.Verses});

  factory ChapterDetails.fromjson(Map m1) {
    return ChapterDetails(
        ChapterNumber: m1['ChapterNumber'],
        ChapterName: m1['ChapterName'],
        Verses: (m1['Verses'] as List)
            .map(
              (e) => Slok.fromjson(e),
            )
            .toList());
  }
}

class Slok {
  late int VerseNumber;
  late Language textclass;

  Slok({required this.VerseNumber, required this.textclass});

  factory Slok.fromjson(Map m1) {
    return Slok(
        VerseNumber: m1['VerseNumber'],
        textclass: Language.fromjson(m1['Text']));
  }
}

class Language {
  late String Hindi, English, Gujarati, Sanskrit;

  Language(
      {required this.Hindi,
      required this.English,
      required this.Gujarati,
      required this.Sanskrit});

  factory Language.fromjson(Map m1) {
    return Language(
        Hindi: m1['Hindi'],
        English: m1['English'],
        Gujarati: m1['Gujarati'],
        Sanskrit: m1['Sanskrit']);
  }
}
