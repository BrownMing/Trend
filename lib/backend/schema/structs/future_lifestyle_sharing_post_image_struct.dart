// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FutureLifestyleSharingPostImageStruct extends BaseStruct {
  FutureLifestyleSharingPostImageStruct({
    int? futureLifestyleSharingPostImageId,
    List<String>? futureLifestyleSharingPostImagePhoto,
    String? futureLifestyleSharingPostImageDescribe,
    List<int>? futureLifestyleSharingPostImageLikeUsers,
    int? futureLifestyleSharingPostImageComment,
    int? futureLifestyleSharingPostImageCreateId,
    DateTime? futureLifestyleSharingPostImageCreateTime,
  })  : _futureLifestyleSharingPostImageId = futureLifestyleSharingPostImageId,
        _futureLifestyleSharingPostImagePhoto =
            futureLifestyleSharingPostImagePhoto,
        _futureLifestyleSharingPostImageDescribe =
            futureLifestyleSharingPostImageDescribe,
        _futureLifestyleSharingPostImageLikeUsers =
            futureLifestyleSharingPostImageLikeUsers,
        _futureLifestyleSharingPostImageComment =
            futureLifestyleSharingPostImageComment,
        _futureLifestyleSharingPostImageCreateId =
            futureLifestyleSharingPostImageCreateId,
        _futureLifestyleSharingPostImageCreateTime =
            futureLifestyleSharingPostImageCreateTime;

  // "FutureLifestyleSharingPostImage_id" field.
  int? _futureLifestyleSharingPostImageId;
  int get futureLifestyleSharingPostImageId =>
      _futureLifestyleSharingPostImageId ?? 0;
  set futureLifestyleSharingPostImageId(int? val) =>
      _futureLifestyleSharingPostImageId = val;

  void incrementFutureLifestyleSharingPostImageId(int amount) =>
      futureLifestyleSharingPostImageId =
          futureLifestyleSharingPostImageId + amount;

  bool hasFutureLifestyleSharingPostImageId() =>
      _futureLifestyleSharingPostImageId != null;

  // "FutureLifestyleSharingPostImage_photo" field.
  List<String>? _futureLifestyleSharingPostImagePhoto;
  List<String> get futureLifestyleSharingPostImagePhoto =>
      _futureLifestyleSharingPostImagePhoto ?? const [];
  set futureLifestyleSharingPostImagePhoto(List<String>? val) =>
      _futureLifestyleSharingPostImagePhoto = val;

  void updateFutureLifestyleSharingPostImagePhoto(
      Function(List<String>) updateFn) {
    updateFn(_futureLifestyleSharingPostImagePhoto ??= []);
  }

  bool hasFutureLifestyleSharingPostImagePhoto() =>
      _futureLifestyleSharingPostImagePhoto != null;

  // "FutureLifestyleSharingPostImage_describe" field.
  String? _futureLifestyleSharingPostImageDescribe;
  String get futureLifestyleSharingPostImageDescribe =>
      _futureLifestyleSharingPostImageDescribe ?? '';
  set futureLifestyleSharingPostImageDescribe(String? val) =>
      _futureLifestyleSharingPostImageDescribe = val;

  bool hasFutureLifestyleSharingPostImageDescribe() =>
      _futureLifestyleSharingPostImageDescribe != null;

  // "FutureLifestyleSharingPostImage_like_users" field.
  List<int>? _futureLifestyleSharingPostImageLikeUsers;
  List<int> get futureLifestyleSharingPostImageLikeUsers =>
      _futureLifestyleSharingPostImageLikeUsers ?? const [];
  set futureLifestyleSharingPostImageLikeUsers(List<int>? val) =>
      _futureLifestyleSharingPostImageLikeUsers = val;

  void updateFutureLifestyleSharingPostImageLikeUsers(
      Function(List<int>) updateFn) {
    updateFn(_futureLifestyleSharingPostImageLikeUsers ??= []);
  }

  bool hasFutureLifestyleSharingPostImageLikeUsers() =>
      _futureLifestyleSharingPostImageLikeUsers != null;

  // "FutureLifestyleSharingPostImage_comment" field.
  int? _futureLifestyleSharingPostImageComment;
  int get futureLifestyleSharingPostImageComment =>
      _futureLifestyleSharingPostImageComment ?? 0;
  set futureLifestyleSharingPostImageComment(int? val) =>
      _futureLifestyleSharingPostImageComment = val;

  void incrementFutureLifestyleSharingPostImageComment(int amount) =>
      futureLifestyleSharingPostImageComment =
          futureLifestyleSharingPostImageComment + amount;

  bool hasFutureLifestyleSharingPostImageComment() =>
      _futureLifestyleSharingPostImageComment != null;

  // "FutureLifestyleSharingPostImage_create_id" field.
  int? _futureLifestyleSharingPostImageCreateId;
  int get futureLifestyleSharingPostImageCreateId =>
      _futureLifestyleSharingPostImageCreateId ?? 0;
  set futureLifestyleSharingPostImageCreateId(int? val) =>
      _futureLifestyleSharingPostImageCreateId = val;

  void incrementFutureLifestyleSharingPostImageCreateId(int amount) =>
      futureLifestyleSharingPostImageCreateId =
          futureLifestyleSharingPostImageCreateId + amount;

  bool hasFutureLifestyleSharingPostImageCreateId() =>
      _futureLifestyleSharingPostImageCreateId != null;

  // "FutureLifestyleSharingPostImage_create_time" field.
  DateTime? _futureLifestyleSharingPostImageCreateTime;
  DateTime? get futureLifestyleSharingPostImageCreateTime =>
      _futureLifestyleSharingPostImageCreateTime;
  set futureLifestyleSharingPostImageCreateTime(DateTime? val) =>
      _futureLifestyleSharingPostImageCreateTime = val;

  bool hasFutureLifestyleSharingPostImageCreateTime() =>
      _futureLifestyleSharingPostImageCreateTime != null;

  static FutureLifestyleSharingPostImageStruct fromMap(
          Map<String, dynamic> data) =>
      FutureLifestyleSharingPostImageStruct(
        futureLifestyleSharingPostImageId:
            castToType<int>(data['FutureLifestyleSharingPostImage_id']),
        futureLifestyleSharingPostImagePhoto:
            getDataList(data['FutureLifestyleSharingPostImage_photo']),
        futureLifestyleSharingPostImageDescribe:
            data['FutureLifestyleSharingPostImage_describe'] as String?,
        futureLifestyleSharingPostImageLikeUsers:
            getDataList(data['FutureLifestyleSharingPostImage_like_users']),
        futureLifestyleSharingPostImageComment:
            castToType<int>(data['FutureLifestyleSharingPostImage_comment']),
        futureLifestyleSharingPostImageCreateId:
            castToType<int>(data['FutureLifestyleSharingPostImage_create_id']),
        futureLifestyleSharingPostImageCreateTime:
            data['FutureLifestyleSharingPostImage_create_time'] as DateTime?,
      );

  static FutureLifestyleSharingPostImageStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? FutureLifestyleSharingPostImageStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'FutureLifestyleSharingPostImage_id':
            _futureLifestyleSharingPostImageId,
        'FutureLifestyleSharingPostImage_photo':
            _futureLifestyleSharingPostImagePhoto,
        'FutureLifestyleSharingPostImage_describe':
            _futureLifestyleSharingPostImageDescribe,
        'FutureLifestyleSharingPostImage_like_users':
            _futureLifestyleSharingPostImageLikeUsers,
        'FutureLifestyleSharingPostImage_comment':
            _futureLifestyleSharingPostImageComment,
        'FutureLifestyleSharingPostImage_create_id':
            _futureLifestyleSharingPostImageCreateId,
        'FutureLifestyleSharingPostImage_create_time':
            _futureLifestyleSharingPostImageCreateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FutureLifestyleSharingPostImage_id': serializeParam(
          _futureLifestyleSharingPostImageId,
          ParamType.int,
        ),
        'FutureLifestyleSharingPostImage_photo': serializeParam(
          _futureLifestyleSharingPostImagePhoto,
          ParamType.String,
          isList: true,
        ),
        'FutureLifestyleSharingPostImage_describe': serializeParam(
          _futureLifestyleSharingPostImageDescribe,
          ParamType.String,
        ),
        'FutureLifestyleSharingPostImage_like_users': serializeParam(
          _futureLifestyleSharingPostImageLikeUsers,
          ParamType.int,
          isList: true,
        ),
        'FutureLifestyleSharingPostImage_comment': serializeParam(
          _futureLifestyleSharingPostImageComment,
          ParamType.int,
        ),
        'FutureLifestyleSharingPostImage_create_id': serializeParam(
          _futureLifestyleSharingPostImageCreateId,
          ParamType.int,
        ),
        'FutureLifestyleSharingPostImage_create_time': serializeParam(
          _futureLifestyleSharingPostImageCreateTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static FutureLifestyleSharingPostImageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FutureLifestyleSharingPostImageStruct(
        futureLifestyleSharingPostImageId: deserializeParam(
          data['FutureLifestyleSharingPostImage_id'],
          ParamType.int,
          false,
        ),
        futureLifestyleSharingPostImagePhoto: deserializeParam<String>(
          data['FutureLifestyleSharingPostImage_photo'],
          ParamType.String,
          true,
        ),
        futureLifestyleSharingPostImageDescribe: deserializeParam(
          data['FutureLifestyleSharingPostImage_describe'],
          ParamType.String,
          false,
        ),
        futureLifestyleSharingPostImageLikeUsers: deserializeParam<int>(
          data['FutureLifestyleSharingPostImage_like_users'],
          ParamType.int,
          true,
        ),
        futureLifestyleSharingPostImageComment: deserializeParam(
          data['FutureLifestyleSharingPostImage_comment'],
          ParamType.int,
          false,
        ),
        futureLifestyleSharingPostImageCreateId: deserializeParam(
          data['FutureLifestyleSharingPostImage_create_id'],
          ParamType.int,
          false,
        ),
        futureLifestyleSharingPostImageCreateTime: deserializeParam(
          data['FutureLifestyleSharingPostImage_create_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'FutureLifestyleSharingPostImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FutureLifestyleSharingPostImageStruct &&
        futureLifestyleSharingPostImageId ==
            other.futureLifestyleSharingPostImageId &&
        listEquality.equals(futureLifestyleSharingPostImagePhoto,
            other.futureLifestyleSharingPostImagePhoto) &&
        futureLifestyleSharingPostImageDescribe ==
            other.futureLifestyleSharingPostImageDescribe &&
        listEquality.equals(futureLifestyleSharingPostImageLikeUsers,
            other.futureLifestyleSharingPostImageLikeUsers) &&
        futureLifestyleSharingPostImageComment ==
            other.futureLifestyleSharingPostImageComment &&
        futureLifestyleSharingPostImageCreateId ==
            other.futureLifestyleSharingPostImageCreateId &&
        futureLifestyleSharingPostImageCreateTime ==
            other.futureLifestyleSharingPostImageCreateTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        futureLifestyleSharingPostImageId,
        futureLifestyleSharingPostImagePhoto,
        futureLifestyleSharingPostImageDescribe,
        futureLifestyleSharingPostImageLikeUsers,
        futureLifestyleSharingPostImageComment,
        futureLifestyleSharingPostImageCreateId,
        futureLifestyleSharingPostImageCreateTime
      ]);
}

FutureLifestyleSharingPostImageStruct
    createFutureLifestyleSharingPostImageStruct({
  int? futureLifestyleSharingPostImageId,
  String? futureLifestyleSharingPostImageDescribe,
  int? futureLifestyleSharingPostImageComment,
  int? futureLifestyleSharingPostImageCreateId,
  DateTime? futureLifestyleSharingPostImageCreateTime,
}) =>
        FutureLifestyleSharingPostImageStruct(
          futureLifestyleSharingPostImageId: futureLifestyleSharingPostImageId,
          futureLifestyleSharingPostImageDescribe:
              futureLifestyleSharingPostImageDescribe,
          futureLifestyleSharingPostImageComment:
              futureLifestyleSharingPostImageComment,
          futureLifestyleSharingPostImageCreateId:
              futureLifestyleSharingPostImageCreateId,
          futureLifestyleSharingPostImageCreateTime:
              futureLifestyleSharingPostImageCreateTime,
        );
