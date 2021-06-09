library linkfo;

import 'package:flutter/material.dart';
import 'package:html/dom.dart';
import 'package:linkfo/src/models/page_info/page_info.dart';
import 'package:linkfo/src/scrapers/amazon.dart';
import 'package:linkfo/src/scrapers/board_game_geek.dart';
import 'package:linkfo/src/scrapers/instagram.dart';
import 'package:linkfo/src/scrapers/twitter.dart';
import 'package:linkfo/src/utils.dart';

abstract class WithDoc {
  const WithDoc(this.doc);

  final Document doc;
}

abstract class Scraper extends WithDoc with ScrapingUtils {
  const Scraper(Document doc) : super(doc);

  String? getDefaultTitle(String url) {
    throw UnimplementedError();
  }

  static PageInfo parse({
    required String url,
    required Document doc,
    required String mimeType,
  }) {
    if (InstagramScraper.isInstagramUrl(url)) {
      return InstagramScraper(doc).scrape();
    } else if (AmazonScraper.isAmazonUrl(url)) {
      return AmazonScraper(doc).scrape();
    } else if (BoardGameGeekScraper.isBoardGameGeekUrl(url)) {
      return BoardGameGeekScraper(doc).scrape();
    } else if (TwitterScraper.isTwitterUrl(url)) {
      return TwitterScraper(doc).scrape();
    } else {
      throw UnsupportedError('Currently not ');
    }
  }

  @protected
  PageInfo scrape();
}
