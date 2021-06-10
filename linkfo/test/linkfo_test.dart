import 'package:flutter_test/flutter_test.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:linkfo/src/scrapers/open_graph.dart';
import 'package:linkfo/src/scrapers/twitter_cards.dart';

void main() {
  final client = http.Client();

  test('parses open graph imbd link', () async {
    const link = 'https://www.imdb.com/title/tt0117500/';

    final response = await client.get(Uri.parse(link));

    final doc = parse(response.body);
    final scraper = OpenGraphScraper(doc);

    final info = scraper.scrape();

    print(info);
    expect(info.description, isNotNull);
    expect(info.image, isNotNull);
    expect(info.title, isNotNull);
  });

  test('parses open graph youtube link', () async {
    const link = 'https://www.youtube.com/watch?v=45MIykWJ-C4';

    final response = await client.get(Uri.parse(link));

    final doc = parse(response.body);
    final scraper = OpenGraphScraper(doc);

    final info = scraper.scrape();

    print(info);
    expect(info.description, isNotNull);
    expect(info.image, isNotNull);
    expect(info.title, isNotNull);
  });

  test('parses twitter cards imbd link', () async {
    const link = 'https://www.imdb.com/title/tt0117500/';

    final response = await client.get(Uri.parse(link));

    final doc = parse(response.body);
    final scraper = TwitterCardsScraper(doc);

    final info = scraper.scrape();

    print(info);
    expect(info.description, isNotNull);
    expect(info.image, isNotNull);
    expect(info.title, isNotNull);
  });

  test('parses twitter cards youtube link', () async {
    const link = 'https://www.youtube.com/watch?v=45MIykWJ-C4';

    final response = await client.get(Uri.parse(link));

    final doc = parse(response.body);
    final scraper = TwitterCardsScraper(doc);

    final info = scraper.scrape();

    print(info);
    expect(info.description, isNotNull);
    expect(info.image, isNotNull);
    expect(info.title, isNotNull);
  });
}
