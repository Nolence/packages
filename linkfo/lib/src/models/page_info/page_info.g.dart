// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenGraphInfo _$_$OpenGraphInfoFromJson(Map<String, dynamic> json) {
  return _$OpenGraphInfo(
    title: json['title'] as String,
    type: json['type'] as String,
    image: json['image'] as String,
    url: json['url'] as String?,
    audio: json['audio'] as String?,
    description: json['description'] as String?,
    determiner: json['determiner'] as String?,
    locale: json['locale'] as String?,
    alternateLocale: json['alternateLocale'] as String?,
    siteName: json['siteName'] as String?,
    video: json['video'] as String?,
    imageData: json['imageData'] == null
        ? null
        : OpenGraphImage.fromJson(json['imageData'] as Map<String, dynamic>),
    videoData: json['videoData'] == null
        ? null
        : OpenGraphVideo.fromJson(json['videoData'] as Map<String, dynamic>),
    audioData: json['audioData'] == null
        ? null
        : OpenGraphAudio.fromJson(json['audioData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$OpenGraphInfoToJson(_$OpenGraphInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'image': instance.image,
      'url': instance.url,
      'audio': instance.audio,
      'description': instance.description,
      'determiner': instance.determiner,
      'locale': instance.locale,
      'alternateLocale': instance.alternateLocale,
      'siteName': instance.siteName,
      'video': instance.video,
      'imageData': instance.imageData,
      'videoData': instance.videoData,
      'audioData': instance.audioData,
    };

_$AmazonInfo _$_$AmazonInfoFromJson(Map<String, dynamic> json) {
  return _$AmazonInfo(
    title: json['title'] as String?,
    content: json['content'] as String?,
    url: json['url'] as String?,
    image: json['image'] as String?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$_$AmazonInfoToJson(_$AmazonInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'image': instance.image,
      'description': instance.description,
    };

_$BoardGameGeekInfo _$_$BoardGameGeekInfoFromJson(Map<String, dynamic> json) {
  return _$BoardGameGeekInfo(
    title: json['title'] as String?,
    content: json['content'] as String?,
    url: json['url'] as String?,
    image: json['image'] as String?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$_$BoardGameGeekInfoToJson(
        _$BoardGameGeekInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'image': instance.image,
      'description': instance.description,
    };

_$TwitterInfo _$_$TwitterInfoFromJson(Map<String, dynamic> json) {
  return _$TwitterInfo(
    title: json['title'] as String?,
    content: json['content'] as String?,
    url: json['url'] as String?,
    image: json['image'] as String?,
    description: json['description'] as String?,
    video: (json['video'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$TwitterInfoToJson(_$TwitterInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'image': instance.image,
      'description': instance.description,
      'video': instance.video,
    };

_$InstagramInfo _$_$InstagramInfoFromJson(Map<String, dynamic> json) {
  return _$InstagramInfo(
    title: json['title'] as String?,
    content: json['content'] as String?,
    url: json['url'] as String?,
    image: json['image'] as String?,
    description: json['description'] as String?,
    video: (json['video'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$InstagramInfoToJson(_$InstagramInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'url': instance.url,
      'image': instance.image,
      'description': instance.description,
      'video': instance.video,
    };
