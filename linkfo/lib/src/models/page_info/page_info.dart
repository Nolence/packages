import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:linkfo/src/models/basic_metadata.dart';
import 'package:linkfo/src/models/open_graph.dart';
import 'package:linkfo/src/models/open_graph_audio/open_graph_audio.dart';
import 'package:linkfo/src/models/open_graph_image/open_graph_image.dart';
import 'package:linkfo/src/models/open_graph_video/open_graph_video.dart';

part 'page_info.freezed.dart';
part 'page_info.g.dart';

@freezed
class PageInfo with _$PageInfo {
  /// Uses the OpenGraph model
  @Implements(OpenGraphMetadata)
  const factory PageInfo.openGraph({
    required String title,
    required String type,
    required String image,
    required String? url,
    required String? audio,
    required String? description,
    required String? determiner,
    required String? locale,
    required String? alternateLocale,
    required String? siteName,
    required String? video,
    required OpenGraphImage? imageData,
    required OpenGraphVideo? videoData,
    required OpenGraphAudio? audioData,
  }) = OpenGraphInfo;

  @Implements(BasicMetadata)
  const factory PageInfo.amazon({
    required String? title,
    required String? content,
    required String? url,
    required String? image,
    required String? description,
  }) = AmazonInfo;

  @Implements(BasicMetadata)
  const factory PageInfo.boardGameGeek({
    required String? title,
    required String? content,
    required String? url,
    required String? image,
    required String? description,
  }) = BoardGameGeekInfo;

  @Implements(BasicMetadata)
  const factory PageInfo.twitter({
    required String? title,
    required String? content,
    required String? url,
    required String? image,
    required String? description,
    required List<String>? video,
  }) = TwitterInfo;

  @Implements(BasicMetadata)
  const factory PageInfo.instagram({
    required String? title,
    required String? content,
    required String? url,
    required String? image,
    required String? description,
    required List<String>? video,
  }) = InstagramInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}
