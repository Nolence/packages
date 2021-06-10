library linkfo;

import 'package:flutter/material.dart';
import 'package:html/dom.dart';
import 'package:linkfo/src/models/page_info/page_info.dart';
import 'package:linkfo/src/scrapers/amazon.dart';
import 'package:linkfo/src/scrapers/twitter_cards.dart';
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
    return TwitterCardsScraper(doc).scrape();

    if (AmazonScraper.isAmazonUrl(url)) {
      return AmazonScraper(doc).scrape();
    }
  }

  @protected
  PageInfo scrape();
}
