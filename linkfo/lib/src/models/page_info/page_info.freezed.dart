// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'page_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'openGraph':
      return OpenGraphInfo.fromJson(json);
    case 'amazon':
      return AmazonInfo.fromJson(json);
    case 'boardGameGeek':
      return BoardGameGeekInfo.fromJson(json);
    case 'twitter':
      return TwitterInfo.fromJson(json);
    case 'instagram':
      return InstagramInfo.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$PageInfoTearOff {
  const _$PageInfoTearOff();

  OpenGraphInfo openGraph(
      {required String title,
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
      required OpenGraphAudio? audioData}) {
    return OpenGraphInfo(
      title: title,
      type: type,
      image: image,
      url: url,
      audio: audio,
      description: description,
      determiner: determiner,
      locale: locale,
      alternateLocale: alternateLocale,
      siteName: siteName,
      video: video,
      imageData: imageData,
      videoData: videoData,
      audioData: audioData,
    );
  }

  AmazonInfo amazon(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description}) {
    return AmazonInfo(
      title: title,
      content: content,
      url: url,
      image: image,
      description: description,
    );
  }

  BoardGameGeekInfo boardGameGeek(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description}) {
    return BoardGameGeekInfo(
      title: title,
      content: content,
      url: url,
      image: image,
      description: description,
    );
  }

  TwitterInfo twitter(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description,
      required List<String>? video}) {
    return TwitterInfo(
      title: title,
      content: content,
      url: url,
      image: image,
      description: description,
      video: video,
    );
  }

  InstagramInfo instagram(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description,
      required List<String>? video}) {
    return InstagramInfo(
      title: title,
      content: content,
      url: url,
      image: image,
      description: description,
      video: video,
    );
  }

  PageInfo fromJson(Map<String, Object> json) {
    return PageInfo.fromJson(json);
  }
}

/// @nodoc
const $PageInfo = _$PageInfoTearOff();

/// @nodoc
mixin _$PageInfo {
  String? get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)
        openGraph,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        amazon,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        boardGameGeek,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        twitter,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        instagram,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)?
        openGraph,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        amazon,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        boardGameGeek,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        twitter,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        instagram,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenGraphInfo value) openGraph,
    required TResult Function(AmazonInfo value) amazon,
    required TResult Function(BoardGameGeekInfo value) boardGameGeek,
    required TResult Function(TwitterInfo value) twitter,
    required TResult Function(InstagramInfo value) instagram,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenGraphInfo value)? openGraph,
    TResult Function(AmazonInfo value)? amazon,
    TResult Function(BoardGameGeekInfo value)? boardGameGeek,
    TResult Function(TwitterInfo value)? twitter,
    TResult Function(InstagramInfo value)? instagram,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res>;
  $Res call({String? url, String? description});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  final PageInfo _value;
  // ignore: unused_field
  final $Res Function(PageInfo) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $OpenGraphInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory $OpenGraphInfoCopyWith(
          OpenGraphInfo value, $Res Function(OpenGraphInfo) then) =
      _$OpenGraphInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String type,
      String image,
      String? url,
      String? audio,
      String? description,
      String? determiner,
      String? locale,
      String? alternateLocale,
      String? siteName,
      String? video,
      OpenGraphImage? imageData,
      OpenGraphVideo? videoData,
      OpenGraphAudio? audioData});

  $OpenGraphImageCopyWith<$Res>? get imageData;
  $OpenGraphVideoCopyWith<$Res>? get videoData;
  $OpenGraphAudioCopyWith<$Res>? get audioData;
}

/// @nodoc
class _$OpenGraphInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements $OpenGraphInfoCopyWith<$Res> {
  _$OpenGraphInfoCopyWithImpl(
      OpenGraphInfo _value, $Res Function(OpenGraphInfo) _then)
      : super(_value, (v) => _then(v as OpenGraphInfo));

  @override
  OpenGraphInfo get _value => super._value as OpenGraphInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? audio = freezed,
    Object? description = freezed,
    Object? determiner = freezed,
    Object? locale = freezed,
    Object? alternateLocale = freezed,
    Object? siteName = freezed,
    Object? video = freezed,
    Object? imageData = freezed,
    Object? videoData = freezed,
    Object? audioData = freezed,
  }) {
    return _then(OpenGraphInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      determiner: determiner == freezed
          ? _value.determiner
          : determiner // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      alternateLocale: alternateLocale == freezed
          ? _value.alternateLocale
          : alternateLocale // ignore: cast_nullable_to_non_nullable
              as String?,
      siteName: siteName == freezed
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      imageData: imageData == freezed
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as OpenGraphImage?,
      videoData: videoData == freezed
          ? _value.videoData
          : videoData // ignore: cast_nullable_to_non_nullable
              as OpenGraphVideo?,
      audioData: audioData == freezed
          ? _value.audioData
          : audioData // ignore: cast_nullable_to_non_nullable
              as OpenGraphAudio?,
    ));
  }

  @override
  $OpenGraphImageCopyWith<$Res>? get imageData {
    if (_value.imageData == null) {
      return null;
    }

    return $OpenGraphImageCopyWith<$Res>(_value.imageData!, (value) {
      return _then(_value.copyWith(imageData: value));
    });
  }

  @override
  $OpenGraphVideoCopyWith<$Res>? get videoData {
    if (_value.videoData == null) {
      return null;
    }

    return $OpenGraphVideoCopyWith<$Res>(_value.videoData!, (value) {
      return _then(_value.copyWith(videoData: value));
    });
  }

  @override
  $OpenGraphAudioCopyWith<$Res>? get audioData {
    if (_value.audioData == null) {
      return null;
    }

    return $OpenGraphAudioCopyWith<$Res>(_value.audioData!, (value) {
      return _then(_value.copyWith(audioData: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@Implements(OpenGraphMetadata)
class _$OpenGraphInfo implements OpenGraphInfo {
  const _$OpenGraphInfo(
      {required this.title,
      required this.type,
      required this.image,
      required this.url,
      required this.audio,
      required this.description,
      required this.determiner,
      required this.locale,
      required this.alternateLocale,
      required this.siteName,
      required this.video,
      required this.imageData,
      required this.videoData,
      required this.audioData});

  factory _$OpenGraphInfo.fromJson(Map<String, dynamic> json) =>
      _$_$OpenGraphInfoFromJson(json);

  @override
  final String title;
  @override
  final String type;
  @override
  final String image;
  @override
  final String? url;
  @override
  final String? audio;
  @override
  final String? description;
  @override
  final String? determiner;
  @override
  final String? locale;
  @override
  final String? alternateLocale;
  @override
  final String? siteName;
  @override
  final String? video;
  @override
  final OpenGraphImage? imageData;
  @override
  final OpenGraphVideo? videoData;
  @override
  final OpenGraphAudio? audioData;

  @override
  String toString() {
    return 'PageInfo.openGraph(title: $title, type: $type, image: $image, url: $url, audio: $audio, description: $description, determiner: $determiner, locale: $locale, alternateLocale: $alternateLocale, siteName: $siteName, video: $video, imageData: $imageData, videoData: $videoData, audioData: $audioData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OpenGraphInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.audio, audio) ||
                const DeepCollectionEquality().equals(other.audio, audio)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.determiner, determiner) ||
                const DeepCollectionEquality()
                    .equals(other.determiner, determiner)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.alternateLocale, alternateLocale) ||
                const DeepCollectionEquality()
                    .equals(other.alternateLocale, alternateLocale)) &&
            (identical(other.siteName, siteName) ||
                const DeepCollectionEquality()
                    .equals(other.siteName, siteName)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.imageData, imageData) ||
                const DeepCollectionEquality()
                    .equals(other.imageData, imageData)) &&
            (identical(other.videoData, videoData) ||
                const DeepCollectionEquality()
                    .equals(other.videoData, videoData)) &&
            (identical(other.audioData, audioData) ||
                const DeepCollectionEquality()
                    .equals(other.audioData, audioData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(audio) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(determiner) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(alternateLocale) ^
      const DeepCollectionEquality().hash(siteName) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(imageData) ^
      const DeepCollectionEquality().hash(videoData) ^
      const DeepCollectionEquality().hash(audioData);

  @JsonKey(ignore: true)
  @override
  $OpenGraphInfoCopyWith<OpenGraphInfo> get copyWith =>
      _$OpenGraphInfoCopyWithImpl<OpenGraphInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)
        openGraph,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        amazon,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        boardGameGeek,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        twitter,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        instagram,
  }) {
    return openGraph(
        title,
        type,
        image,
        url,
        audio,
        description,
        determiner,
        locale,
        alternateLocale,
        siteName,
        video,
        imageData,
        videoData,
        audioData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)?
        openGraph,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        amazon,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        boardGameGeek,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        twitter,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        instagram,
    required TResult orElse(),
  }) {
    if (openGraph != null) {
      return openGraph(
          title,
          type,
          image,
          url,
          audio,
          description,
          determiner,
          locale,
          alternateLocale,
          siteName,
          video,
          imageData,
          videoData,
          audioData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenGraphInfo value) openGraph,
    required TResult Function(AmazonInfo value) amazon,
    required TResult Function(BoardGameGeekInfo value) boardGameGeek,
    required TResult Function(TwitterInfo value) twitter,
    required TResult Function(InstagramInfo value) instagram,
  }) {
    return openGraph(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenGraphInfo value)? openGraph,
    TResult Function(AmazonInfo value)? amazon,
    TResult Function(BoardGameGeekInfo value)? boardGameGeek,
    TResult Function(TwitterInfo value)? twitter,
    TResult Function(InstagramInfo value)? instagram,
    required TResult orElse(),
  }) {
    if (openGraph != null) {
      return openGraph(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$OpenGraphInfoToJson(this)..['runtimeType'] = 'openGraph';
  }
}

abstract class OpenGraphInfo implements PageInfo, OpenGraphMetadata {
  const factory OpenGraphInfo(
      {required String title,
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
      required OpenGraphAudio? audioData}) = _$OpenGraphInfo;

  factory OpenGraphInfo.fromJson(Map<String, dynamic> json) =
      _$OpenGraphInfo.fromJson;

  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  String? get determiner => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get alternateLocale => throw _privateConstructorUsedError;
  String? get siteName => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  OpenGraphImage? get imageData => throw _privateConstructorUsedError;
  OpenGraphVideo? get videoData => throw _privateConstructorUsedError;
  OpenGraphAudio? get audioData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $OpenGraphInfoCopyWith<OpenGraphInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmazonInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory $AmazonInfoCopyWith(
          AmazonInfo value, $Res Function(AmazonInfo) then) =
      _$AmazonInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? content,
      String? url,
      String? image,
      String? description});
}

/// @nodoc
class _$AmazonInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements $AmazonInfoCopyWith<$Res> {
  _$AmazonInfoCopyWithImpl(AmazonInfo _value, $Res Function(AmazonInfo) _then)
      : super(_value, (v) => _then(v as AmazonInfo));

  @override
  AmazonInfo get _value => super._value as AmazonInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? url = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(AmazonInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(BasicMetadata)
class _$AmazonInfo implements AmazonInfo {
  const _$AmazonInfo(
      {required this.title,
      required this.content,
      required this.url,
      required this.image,
      required this.description});

  factory _$AmazonInfo.fromJson(Map<String, dynamic> json) =>
      _$_$AmazonInfoFromJson(json);

  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? url;
  @override
  final String? image;
  @override
  final String? description;

  @override
  String toString() {
    return 'PageInfo.amazon(title: $title, content: $content, url: $url, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AmazonInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $AmazonInfoCopyWith<AmazonInfo> get copyWith =>
      _$AmazonInfoCopyWithImpl<AmazonInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)
        openGraph,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        amazon,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        boardGameGeek,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        twitter,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        instagram,
  }) {
    return amazon(title, content, url, image, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)?
        openGraph,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        amazon,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        boardGameGeek,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        twitter,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        instagram,
    required TResult orElse(),
  }) {
    if (amazon != null) {
      return amazon(title, content, url, image, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenGraphInfo value) openGraph,
    required TResult Function(AmazonInfo value) amazon,
    required TResult Function(BoardGameGeekInfo value) boardGameGeek,
    required TResult Function(TwitterInfo value) twitter,
    required TResult Function(InstagramInfo value) instagram,
  }) {
    return amazon(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenGraphInfo value)? openGraph,
    TResult Function(AmazonInfo value)? amazon,
    TResult Function(BoardGameGeekInfo value)? boardGameGeek,
    TResult Function(TwitterInfo value)? twitter,
    TResult Function(InstagramInfo value)? instagram,
    required TResult orElse(),
  }) {
    if (amazon != null) {
      return amazon(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$AmazonInfoToJson(this)..['runtimeType'] = 'amazon';
  }
}

abstract class AmazonInfo implements PageInfo, BasicMetadata {
  const factory AmazonInfo(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description}) = _$AmazonInfo;

  factory AmazonInfo.fromJson(Map<String, dynamic> json) =
      _$AmazonInfo.fromJson;

  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AmazonInfoCopyWith<AmazonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardGameGeekInfoCopyWith<$Res>
    implements $PageInfoCopyWith<$Res> {
  factory $BoardGameGeekInfoCopyWith(
          BoardGameGeekInfo value, $Res Function(BoardGameGeekInfo) then) =
      _$BoardGameGeekInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? content,
      String? url,
      String? image,
      String? description});
}

/// @nodoc
class _$BoardGameGeekInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements $BoardGameGeekInfoCopyWith<$Res> {
  _$BoardGameGeekInfoCopyWithImpl(
      BoardGameGeekInfo _value, $Res Function(BoardGameGeekInfo) _then)
      : super(_value, (v) => _then(v as BoardGameGeekInfo));

  @override
  BoardGameGeekInfo get _value => super._value as BoardGameGeekInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? url = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(BoardGameGeekInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(BasicMetadata)
class _$BoardGameGeekInfo implements BoardGameGeekInfo {
  const _$BoardGameGeekInfo(
      {required this.title,
      required this.content,
      required this.url,
      required this.image,
      required this.description});

  factory _$BoardGameGeekInfo.fromJson(Map<String, dynamic> json) =>
      _$_$BoardGameGeekInfoFromJson(json);

  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? url;
  @override
  final String? image;
  @override
  final String? description;

  @override
  String toString() {
    return 'PageInfo.boardGameGeek(title: $title, content: $content, url: $url, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BoardGameGeekInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  $BoardGameGeekInfoCopyWith<BoardGameGeekInfo> get copyWith =>
      _$BoardGameGeekInfoCopyWithImpl<BoardGameGeekInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)
        openGraph,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        amazon,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        boardGameGeek,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        twitter,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        instagram,
  }) {
    return boardGameGeek(title, content, url, image, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)?
        openGraph,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        amazon,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        boardGameGeek,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        twitter,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        instagram,
    required TResult orElse(),
  }) {
    if (boardGameGeek != null) {
      return boardGameGeek(title, content, url, image, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenGraphInfo value) openGraph,
    required TResult Function(AmazonInfo value) amazon,
    required TResult Function(BoardGameGeekInfo value) boardGameGeek,
    required TResult Function(TwitterInfo value) twitter,
    required TResult Function(InstagramInfo value) instagram,
  }) {
    return boardGameGeek(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenGraphInfo value)? openGraph,
    TResult Function(AmazonInfo value)? amazon,
    TResult Function(BoardGameGeekInfo value)? boardGameGeek,
    TResult Function(TwitterInfo value)? twitter,
    TResult Function(InstagramInfo value)? instagram,
    required TResult orElse(),
  }) {
    if (boardGameGeek != null) {
      return boardGameGeek(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BoardGameGeekInfoToJson(this)..['runtimeType'] = 'boardGameGeek';
  }
}

abstract class BoardGameGeekInfo implements PageInfo, BasicMetadata {
  const factory BoardGameGeekInfo(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description}) = _$BoardGameGeekInfo;

  factory BoardGameGeekInfo.fromJson(Map<String, dynamic> json) =
      _$BoardGameGeekInfo.fromJson;

  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BoardGameGeekInfoCopyWith<BoardGameGeekInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory $TwitterInfoCopyWith(
          TwitterInfo value, $Res Function(TwitterInfo) then) =
      _$TwitterInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? content,
      String? url,
      String? image,
      String? description,
      List<String>? video});
}

/// @nodoc
class _$TwitterInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements $TwitterInfoCopyWith<$Res> {
  _$TwitterInfoCopyWithImpl(
      TwitterInfo _value, $Res Function(TwitterInfo) _then)
      : super(_value, (v) => _then(v as TwitterInfo));

  @override
  TwitterInfo get _value => super._value as TwitterInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? url = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? video = freezed,
  }) {
    return _then(TwitterInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(BasicMetadata)
class _$TwitterInfo implements TwitterInfo {
  const _$TwitterInfo(
      {required this.title,
      required this.content,
      required this.url,
      required this.image,
      required this.description,
      required this.video});

  factory _$TwitterInfo.fromJson(Map<String, dynamic> json) =>
      _$_$TwitterInfoFromJson(json);

  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? url;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final List<String>? video;

  @override
  String toString() {
    return 'PageInfo.twitter(title: $title, content: $content, url: $url, image: $image, description: $description, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TwitterInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(video);

  @JsonKey(ignore: true)
  @override
  $TwitterInfoCopyWith<TwitterInfo> get copyWith =>
      _$TwitterInfoCopyWithImpl<TwitterInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)
        openGraph,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        amazon,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        boardGameGeek,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        twitter,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        instagram,
  }) {
    return twitter(title, content, url, image, description, video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)?
        openGraph,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        amazon,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        boardGameGeek,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        twitter,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        instagram,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter(title, content, url, image, description, video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenGraphInfo value) openGraph,
    required TResult Function(AmazonInfo value) amazon,
    required TResult Function(BoardGameGeekInfo value) boardGameGeek,
    required TResult Function(TwitterInfo value) twitter,
    required TResult Function(InstagramInfo value) instagram,
  }) {
    return twitter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenGraphInfo value)? openGraph,
    TResult Function(AmazonInfo value)? amazon,
    TResult Function(BoardGameGeekInfo value)? boardGameGeek,
    TResult Function(TwitterInfo value)? twitter,
    TResult Function(InstagramInfo value)? instagram,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TwitterInfoToJson(this)..['runtimeType'] = 'twitter';
  }
}

abstract class TwitterInfo implements PageInfo, BasicMetadata {
  const factory TwitterInfo(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description,
      required List<String>? video}) = _$TwitterInfo;

  factory TwitterInfo.fromJson(Map<String, dynamic> json) =
      _$TwitterInfo.fromJson;

  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  List<String>? get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TwitterInfoCopyWith<TwitterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstagramInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory $InstagramInfoCopyWith(
          InstagramInfo value, $Res Function(InstagramInfo) then) =
      _$InstagramInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? content,
      String? url,
      String? image,
      String? description,
      List<String>? video});
}

/// @nodoc
class _$InstagramInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements $InstagramInfoCopyWith<$Res> {
  _$InstagramInfoCopyWithImpl(
      InstagramInfo _value, $Res Function(InstagramInfo) _then)
      : super(_value, (v) => _then(v as InstagramInfo));

  @override
  InstagramInfo get _value => super._value as InstagramInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? url = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? video = freezed,
  }) {
    return _then(InstagramInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Implements(BasicMetadata)
class _$InstagramInfo implements InstagramInfo {
  const _$InstagramInfo(
      {required this.title,
      required this.content,
      required this.url,
      required this.image,
      required this.description,
      required this.video});

  factory _$InstagramInfo.fromJson(Map<String, dynamic> json) =>
      _$_$InstagramInfoFromJson(json);

  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? url;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final List<String>? video;

  @override
  String toString() {
    return 'PageInfo.instagram(title: $title, content: $content, url: $url, image: $image, description: $description, video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InstagramInfo &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(video);

  @JsonKey(ignore: true)
  @override
  $InstagramInfoCopyWith<InstagramInfo> get copyWith =>
      _$InstagramInfoCopyWithImpl<InstagramInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)
        openGraph,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        amazon,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description)
        boardGameGeek,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        twitter,
    required TResult Function(String? title, String? content, String? url,
            String? image, String? description, List<String>? video)
        instagram,
  }) {
    return instagram(title, content, url, image, description, video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String title,
            String type,
            String image,
            String? url,
            String? audio,
            String? description,
            String? determiner,
            String? locale,
            String? alternateLocale,
            String? siteName,
            String? video,
            OpenGraphImage? imageData,
            OpenGraphVideo? videoData,
            OpenGraphAudio? audioData)?
        openGraph,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        amazon,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description)?
        boardGameGeek,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        twitter,
    TResult Function(String? title, String? content, String? url, String? image,
            String? description, List<String>? video)?
        instagram,
    required TResult orElse(),
  }) {
    if (instagram != null) {
      return instagram(title, content, url, image, description, video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenGraphInfo value) openGraph,
    required TResult Function(AmazonInfo value) amazon,
    required TResult Function(BoardGameGeekInfo value) boardGameGeek,
    required TResult Function(TwitterInfo value) twitter,
    required TResult Function(InstagramInfo value) instagram,
  }) {
    return instagram(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenGraphInfo value)? openGraph,
    TResult Function(AmazonInfo value)? amazon,
    TResult Function(BoardGameGeekInfo value)? boardGameGeek,
    TResult Function(TwitterInfo value)? twitter,
    TResult Function(InstagramInfo value)? instagram,
    required TResult orElse(),
  }) {
    if (instagram != null) {
      return instagram(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InstagramInfoToJson(this)..['runtimeType'] = 'instagram';
  }
}

abstract class InstagramInfo implements PageInfo, BasicMetadata {
  const factory InstagramInfo(
      {required String? title,
      required String? content,
      required String? url,
      required String? image,
      required String? description,
      required List<String>? video}) = _$InstagramInfo;

  factory InstagramInfo.fromJson(Map<String, dynamic> json) =
      _$InstagramInfo.fromJson;

  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  List<String>? get video => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InstagramInfoCopyWith<InstagramInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
