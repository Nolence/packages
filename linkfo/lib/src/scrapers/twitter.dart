import 'package:html/dom.dart';
import 'package:linkfo/linkfo.dart';
import 'package:linkfo/src/models/page_info/page_info.dart';

class TwitterScraper extends Scraper {
  const TwitterScraper(Document doc) : super(doc);

  static final regexTwitter = RegExp(
    r'(https?:\/\/(www)?\.?)?twitter\.com\/.+',
    caseSensitive: false,
  );

  static bool isTwitterUrl(String url) => regexTwitter.hasMatch(url);

  @override
  TwitterInfo scrape() {
    throw UnimplementedError();
  }
}
