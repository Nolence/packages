import 'package:html/dom.dart';
import 'package:linkfo/linkfo.dart';
import 'package:linkfo/src/models/page_info/page_info.dart';

class InstagramScraper extends Scraper {
  const InstagramScraper(Document doc) : super(doc);

  static final videoRegex = RegExp(
    r'(?:"video_url":")(.*?)(?:")',
    caseSensitive: false,
  );

  static final regex = RegExp(
    r'(https?:\/\/www\.)?instagram\.com(\/p\/\w+\/?)',
    caseSensitive: false,
  );

  static bool isInstagramUrl(String url) => regex.hasMatch(url);

  @override
  InstagramInfo scrape() {
    throw UnimplementedError();
  }

  String? getInstagramVideo(Document doc) {
    //  final matches = instagramVideoRegex.allMatches(doc.body.)

    // if (videoMatches && videoMatches.length !== 0) {
    //   return videoMatches[0].split('":"')[1].replace('"', '')
    // }

    return null;
  }
}
