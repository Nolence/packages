import 'package:flutter_test/flutter_test.dart';
import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:linkfo/src/scrapers/amazon.dart';
import 'package:linkfo/src/scrapers/open_graph.dart';

void main() {
  test('parses open graph imbd link', () async {
    const link = 'https://www.imdb.com/title/tt0117500/';

    final response = await http.get(Uri.parse(link));

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

    final response = await http.get(Uri.parse(link));

    final doc = parse(response.body);
    final scraper = OpenGraphScraper(doc);

    final info = scraper.scrape();

    print(info);
    expect(info.description, isNotNull);
    expect(info.image, isNotNull);
    expect(info.title, isNotNull);
  });

  test('parses amazon link', () async {
    const links = [
      'https://www.amazon.com/Milk-Bone-Marosnacks-Treats-Sizes-40-Ounce/dp/B003PMQMK2/ref=lp_2619533011_1_7',
    ];

    final responses = await Future.wait(
      links.map((link) => http.get(Uri.parse(link))),
    );

    for (final response in responses) {
      final doc = parse(response.body);
      final scraper = AmazonScraper(doc);
      final info = scraper.scrape();

      expect(info.content, isNotNull);
      expect(info.description, isNotNull);
      expect(info.image, isNotNull);
      expect(info.title, isNotNull);
      expect(info.url, isNotNull);
    }
  });

  test('parses a youtube link', () async {
    const links = [
      'https://www.amazon.com/Milk-Bone-Marosnacks-Treats-Sizes-40-Ounce/dp/B003PMQMK2/ref=lp_2619533011_1_7',
    ];

    final responses = await Future.wait(
      links.map((link) => http.get(Uri.parse(link))),
    );

    for (final response in responses) {
      final doc = parse(response.body);
      final scraper = AmazonScraper(doc);
      final info = scraper.scrape();

      expect(info.content, isNotNull);
      expect(info.description, isNotNull);
      expect(info.image, isNotNull);
      expect(info.title, isNotNull);
      expect(info.url, isNotNull);
    }
  });
}
