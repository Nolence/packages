import 'package:html/dom.dart';
import 'package:linkfo/linkfo.dart';
import 'package:linkfo/src/models/page_info/page_info.dart';

class BoardGameGeekScraper extends Scraper {
  const BoardGameGeekScraper(Document doc) : super(doc);

  static final regex = RegExp(
    r'(https?:\/\/www\.)?boardgamegeek\.com(\/boardgame\/\w+\/\w+\/?)',
    caseSensitive: false,
  );

  static bool isBoardGameGeekUrl(String url) => regex.hasMatch(url);

  @override
  BoardGameGeekInfo scrape() {
    throw UnimplementedError();
  }
}
