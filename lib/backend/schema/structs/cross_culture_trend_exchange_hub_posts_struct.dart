// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';

class CrossCultureTrendExchangeHubPostsStruct extends BaseStruct {
  CrossCultureTrendExchangeHubPostsStruct({
    int? crossCultureTrendExchangeHubPostsId,
    int? crossCultureTrendExchangeHubPostsCreateId,
    List<String>? crossCultureTrendExchangeHubPostsPhoto,
    String? crossCultureTrendExchangeHubPostsVideo,
    String? crossCultureTrendExchangeHubPostsDescribe,
    List<int>? crossCultureTrendExchangeHubPostsLikeUser,
    int? crossCultureTrendExchangeHubPostsComments,
    DateTime? crossCultureTrendExchangeHubPostsCreateTime,
  })  : _crossCultureTrendExchangeHubPostsId =
            crossCultureTrendExchangeHubPostsId,
        _crossCultureTrendExchangeHubPostsCreateId =
            crossCultureTrendExchangeHubPostsCreateId,
        _crossCultureTrendExchangeHubPostsPhoto =
            crossCultureTrendExchangeHubPostsPhoto,
        _crossCultureTrendExchangeHubPostsVideo =
            crossCultureTrendExchangeHubPostsVideo,
        _crossCultureTrendExchangeHubPostsDescribe =
            crossCultureTrendExchangeHubPostsDescribe,
        _crossCultureTrendExchangeHubPostsLikeUser =
            crossCultureTrendExchangeHubPostsLikeUser,
        _crossCultureTrendExchangeHubPostsComments =
            crossCultureTrendExchangeHubPostsComments,
        _crossCultureTrendExchangeHubPostsCreateTime =
            crossCultureTrendExchangeHubPostsCreateTime;

  // "CrossCultureTrendExchangeHubPosts_id" field.
  int? _crossCultureTrendExchangeHubPostsId;
  int get crossCultureTrendExchangeHubPostsId =>
      _crossCultureTrendExchangeHubPostsId ?? 0;
  set crossCultureTrendExchangeHubPostsId(int? val) =>
      _crossCultureTrendExchangeHubPostsId = val;

  void incrementCrossCultureTrendExchangeHubPostsId(int amount) =>
      crossCultureTrendExchangeHubPostsId =
          crossCultureTrendExchangeHubPostsId + amount;

  bool hasCrossCultureTrendExchangeHubPostsId() =>
      _crossCultureTrendExchangeHubPostsId != null;

  // "CrossCultureTrendExchangeHubPosts_create_id" field.
  int? _crossCultureTrendExchangeHubPostsCreateId;
  int get crossCultureTrendExchangeHubPostsCreateId =>
      _crossCultureTrendExchangeHubPostsCreateId ?? 0;
  set crossCultureTrendExchangeHubPostsCreateId(int? val) =>
      _crossCultureTrendExchangeHubPostsCreateId = val;

  void incrementCrossCultureTrendExchangeHubPostsCreateId(int amount) =>
      crossCultureTrendExchangeHubPostsCreateId =
          crossCultureTrendExchangeHubPostsCreateId + amount;

  bool hasCrossCultureTrendExchangeHubPostsCreateId() =>
      _crossCultureTrendExchangeHubPostsCreateId != null;

  // "CrossCultureTrendExchangeHubPosts_photo" field.
  List<String>? _crossCultureTrendExchangeHubPostsPhoto;
  List<String> get crossCultureTrendExchangeHubPostsPhoto =>
      _crossCultureTrendExchangeHubPostsPhoto ?? const [];
  set crossCultureTrendExchangeHubPostsPhoto(List<String>? val) =>
      _crossCultureTrendExchangeHubPostsPhoto = val;

  void updateCrossCultureTrendExchangeHubPostsPhoto(
      Function(List<String>) updateFn) {
    updateFn(_crossCultureTrendExchangeHubPostsPhoto ??= []);
  }

  bool hasCrossCultureTrendExchangeHubPostsPhoto() =>
      _crossCultureTrendExchangeHubPostsPhoto != null;

  // "CrossCultureTrendExchangeHubPosts_video" field.
  String? _crossCultureTrendExchangeHubPostsVideo;
  String get crossCultureTrendExchangeHubPostsVideo =>
      _crossCultureTrendExchangeHubPostsVideo ?? '';
  set crossCultureTrendExchangeHubPostsVideo(String? val) =>
      _crossCultureTrendExchangeHubPostsVideo = val;

  bool hasCrossCultureTrendExchangeHubPostsVideo() =>
      _crossCultureTrendExchangeHubPostsVideo != null;

  // "CrossCultureTrendExchangeHubPosts_describe" field.
  String? _crossCultureTrendExchangeHubPostsDescribe;
  String get crossCultureTrendExchangeHubPostsDescribe =>
      _crossCultureTrendExchangeHubPostsDescribe ?? '';
  set crossCultureTrendExchangeHubPostsDescribe(String? val) =>
      _crossCultureTrendExchangeHubPostsDescribe = val;

  bool hasCrossCultureTrendExchangeHubPostsDescribe() =>
      _crossCultureTrendExchangeHubPostsDescribe != null;

  // "CrossCultureTrendExchangeHubPosts_like_user" field.
  List<int>? _crossCultureTrendExchangeHubPostsLikeUser;
  List<int> get crossCultureTrendExchangeHubPostsLikeUser =>
      _crossCultureTrendExchangeHubPostsLikeUser ?? const [];
  set crossCultureTrendExchangeHubPostsLikeUser(List<int>? val) =>
      _crossCultureTrendExchangeHubPostsLikeUser = val;

  void updateCrossCultureTrendExchangeHubPostsLikeUser(
      Function(List<int>) updateFn) {
    updateFn(_crossCultureTrendExchangeHubPostsLikeUser ??= []);
  }

  bool hasCrossCultureTrendExchangeHubPostsLikeUser() =>
      _crossCultureTrendExchangeHubPostsLikeUser != null;

  // "CrossCultureTrendExchangeHubPosts_comments" field.
  int? _crossCultureTrendExchangeHubPostsComments;
  int get crossCultureTrendExchangeHubPostsComments =>
      _crossCultureTrendExchangeHubPostsComments ?? 0;
  set crossCultureTrendExchangeHubPostsComments(int? val) =>
      _crossCultureTrendExchangeHubPostsComments = val;

  void incrementCrossCultureTrendExchangeHubPostsComments(int amount) =>
      crossCultureTrendExchangeHubPostsComments =
          crossCultureTrendExchangeHubPostsComments + amount;

  bool hasCrossCultureTrendExchangeHubPostsComments() =>
      _crossCultureTrendExchangeHubPostsComments != null;

  // "CrossCultureTrendExchangeHubPosts_create_time" field.
  DateTime? _crossCultureTrendExchangeHubPostsCreateTime;
  DateTime? get crossCultureTrendExchangeHubPostsCreateTime =>
      _crossCultureTrendExchangeHubPostsCreateTime;
  set crossCultureTrendExchangeHubPostsCreateTime(DateTime? val) =>
      _crossCultureTrendExchangeHubPostsCreateTime = val;

  bool hasCrossCultureTrendExchangeHubPostsCreateTime() =>
      _crossCultureTrendExchangeHubPostsCreateTime != null;

  static CrossCultureTrendExchangeHubPostsStruct fromMap(
          Map<String, dynamic> data) =>
      CrossCultureTrendExchangeHubPostsStruct(
        crossCultureTrendExchangeHubPostsId:
            castToType<int>(data['CrossCultureTrendExchangeHubPosts_id']),
        crossCultureTrendExchangeHubPostsCreateId: castToType<int>(
            data['CrossCultureTrendExchangeHubPosts_create_id']),
        crossCultureTrendExchangeHubPostsPhoto:
            getDataList(data['CrossCultureTrendExchangeHubPosts_photo']),
        crossCultureTrendExchangeHubPostsVideo:
            data['CrossCultureTrendExchangeHubPosts_video'] as String?,
        crossCultureTrendExchangeHubPostsDescribe:
            data['CrossCultureTrendExchangeHubPosts_describe'] as String?,
        crossCultureTrendExchangeHubPostsLikeUser:
            getDataList(data['CrossCultureTrendExchangeHubPosts_like_user']),
        crossCultureTrendExchangeHubPostsComments:
            castToType<int>(data['CrossCultureTrendExchangeHubPosts_comments']),
        crossCultureTrendExchangeHubPostsCreateTime:
            data['CrossCultureTrendExchangeHubPosts_create_time'] as DateTime?,
      );

  static CrossCultureTrendExchangeHubPostsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CrossCultureTrendExchangeHubPostsStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'CrossCultureTrendExchangeHubPosts_id':
            _crossCultureTrendExchangeHubPostsId,
        'CrossCultureTrendExchangeHubPosts_create_id':
            _crossCultureTrendExchangeHubPostsCreateId,
        'CrossCultureTrendExchangeHubPosts_photo':
            _crossCultureTrendExchangeHubPostsPhoto,
        'CrossCultureTrendExchangeHubPosts_video':
            _crossCultureTrendExchangeHubPostsVideo,
        'CrossCultureTrendExchangeHubPosts_describe':
            _crossCultureTrendExchangeHubPostsDescribe,
        'CrossCultureTrendExchangeHubPosts_like_user':
            _crossCultureTrendExchangeHubPostsLikeUser,
        'CrossCultureTrendExchangeHubPosts_comments':
            _crossCultureTrendExchangeHubPostsComments,
        'CrossCultureTrendExchangeHubPosts_create_time':
            _crossCultureTrendExchangeHubPostsCreateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CrossCultureTrendExchangeHubPosts_id': serializeParam(
          _crossCultureTrendExchangeHubPostsId,
          ParamType.int,
        ),
        'CrossCultureTrendExchangeHubPosts_create_id': serializeParam(
          _crossCultureTrendExchangeHubPostsCreateId,
          ParamType.int,
        ),
        'CrossCultureTrendExchangeHubPosts_photo': serializeParam(
          _crossCultureTrendExchangeHubPostsPhoto,
          ParamType.String,
          isList: true,
        ),
        'CrossCultureTrendExchangeHubPosts_video': serializeParam(
          _crossCultureTrendExchangeHubPostsVideo,
          ParamType.String,
        ),
        'CrossCultureTrendExchangeHubPosts_describe': serializeParam(
          _crossCultureTrendExchangeHubPostsDescribe,
          ParamType.String,
        ),
        'CrossCultureTrendExchangeHubPosts_like_user': serializeParam(
          _crossCultureTrendExchangeHubPostsLikeUser,
          ParamType.int,
          isList: true,
        ),
        'CrossCultureTrendExchangeHubPosts_comments': serializeParam(
          _crossCultureTrendExchangeHubPostsComments,
          ParamType.int,
        ),
        'CrossCultureTrendExchangeHubPosts_create_time': serializeParam(
          _crossCultureTrendExchangeHubPostsCreateTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CrossCultureTrendExchangeHubPostsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CrossCultureTrendExchangeHubPostsStruct(
        crossCultureTrendExchangeHubPostsId: deserializeParam(
          data['CrossCultureTrendExchangeHubPosts_id'],
          ParamType.int,
          false,
        ),
        crossCultureTrendExchangeHubPostsCreateId: deserializeParam(
          data['CrossCultureTrendExchangeHubPosts_create_id'],
          ParamType.int,
          false,
        ),
        crossCultureTrendExchangeHubPostsPhoto: deserializeParam<String>(
          data['CrossCultureTrendExchangeHubPosts_photo'],
          ParamType.String,
          true,
        ),
        crossCultureTrendExchangeHubPostsVideo: deserializeParam(
          data['CrossCultureTrendExchangeHubPosts_video'],
          ParamType.String,
          false,
        ),
        crossCultureTrendExchangeHubPostsDescribe: deserializeParam(
          data['CrossCultureTrendExchangeHubPosts_describe'],
          ParamType.String,
          false,
        ),
        crossCultureTrendExchangeHubPostsLikeUser: deserializeParam<int>(
          data['CrossCultureTrendExchangeHubPosts_like_user'],
          ParamType.int,
          true,
        ),
        crossCultureTrendExchangeHubPostsComments: deserializeParam(
          data['CrossCultureTrendExchangeHubPosts_comments'],
          ParamType.int,
          false,
        ),
        crossCultureTrendExchangeHubPostsCreateTime: deserializeParam(
          data['CrossCultureTrendExchangeHubPosts_create_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CrossCultureTrendExchangeHubPostsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CrossCultureTrendExchangeHubPostsStruct &&
        crossCultureTrendExchangeHubPostsId ==
            other.crossCultureTrendExchangeHubPostsId &&
        crossCultureTrendExchangeHubPostsCreateId ==
            other.crossCultureTrendExchangeHubPostsCreateId &&
        listEquality.equals(crossCultureTrendExchangeHubPostsPhoto,
            other.crossCultureTrendExchangeHubPostsPhoto) &&
        crossCultureTrendExchangeHubPostsVideo ==
            other.crossCultureTrendExchangeHubPostsVideo &&
        crossCultureTrendExchangeHubPostsDescribe ==
            other.crossCultureTrendExchangeHubPostsDescribe &&
        listEquality.equals(crossCultureTrendExchangeHubPostsLikeUser,
            other.crossCultureTrendExchangeHubPostsLikeUser) &&
        crossCultureTrendExchangeHubPostsComments ==
            other.crossCultureTrendExchangeHubPostsComments &&
        crossCultureTrendExchangeHubPostsCreateTime ==
            other.crossCultureTrendExchangeHubPostsCreateTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        crossCultureTrendExchangeHubPostsId,
        crossCultureTrendExchangeHubPostsCreateId,
        crossCultureTrendExchangeHubPostsPhoto,
        crossCultureTrendExchangeHubPostsVideo,
        crossCultureTrendExchangeHubPostsDescribe,
        crossCultureTrendExchangeHubPostsLikeUser,
        crossCultureTrendExchangeHubPostsComments,
        crossCultureTrendExchangeHubPostsCreateTime
      ]);
}

CrossCultureTrendExchangeHubPostsStruct
    createCrossCultureTrendExchangeHubPostsStruct({
  int? crossCultureTrendExchangeHubPostsId,
  int? crossCultureTrendExchangeHubPostsCreateId,
  String? crossCultureTrendExchangeHubPostsVideo,
  String? crossCultureTrendExchangeHubPostsDescribe,
  int? crossCultureTrendExchangeHubPostsComments,
  DateTime? crossCultureTrendExchangeHubPostsCreateTime,
}) =>
        CrossCultureTrendExchangeHubPostsStruct(
          crossCultureTrendExchangeHubPostsId:
              crossCultureTrendExchangeHubPostsId,
          crossCultureTrendExchangeHubPostsCreateId:
              crossCultureTrendExchangeHubPostsCreateId,
          crossCultureTrendExchangeHubPostsVideo:
              crossCultureTrendExchangeHubPostsVideo,
          crossCultureTrendExchangeHubPostsDescribe:
              crossCultureTrendExchangeHubPostsDescribe,
          crossCultureTrendExchangeHubPostsComments:
              crossCultureTrendExchangeHubPostsComments,
          crossCultureTrendExchangeHubPostsCreateTime:
              crossCultureTrendExchangeHubPostsCreateTime,
        );
