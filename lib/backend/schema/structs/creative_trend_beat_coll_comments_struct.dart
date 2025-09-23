// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreativeTrendBeatCollCommentsStruct extends BaseStruct {
  CreativeTrendBeatCollCommentsStruct({
    String? creativeTrendBeatCollCommentsContent,
    int? creativeTrendBeatCollCommentsCreateId,
    int? creativeTrendBeatCollCommentsPostRef,
    DateTime? creativeTrendBeatCollCommentsCreateTime,
  })  : _creativeTrendBeatCollCommentsContent =
            creativeTrendBeatCollCommentsContent,
        _creativeTrendBeatCollCommentsCreateId =
            creativeTrendBeatCollCommentsCreateId,
        _creativeTrendBeatCollCommentsPostRef =
            creativeTrendBeatCollCommentsPostRef,
        _creativeTrendBeatCollCommentsCreateTime =
            creativeTrendBeatCollCommentsCreateTime;

  // "CreativeTrendBeatCollComments_content" field.
  String? _creativeTrendBeatCollCommentsContent;
  String get creativeTrendBeatCollCommentsContent =>
      _creativeTrendBeatCollCommentsContent ?? '';
  set creativeTrendBeatCollCommentsContent(String? val) =>
      _creativeTrendBeatCollCommentsContent = val;

  bool hasCreativeTrendBeatCollCommentsContent() =>
      _creativeTrendBeatCollCommentsContent != null;

  // "CreativeTrendBeatCollComments_create_id" field.
  int? _creativeTrendBeatCollCommentsCreateId;
  int get creativeTrendBeatCollCommentsCreateId =>
      _creativeTrendBeatCollCommentsCreateId ?? 0;
  set creativeTrendBeatCollCommentsCreateId(int? val) =>
      _creativeTrendBeatCollCommentsCreateId = val;

  void incrementCreativeTrendBeatCollCommentsCreateId(int amount) =>
      creativeTrendBeatCollCommentsCreateId =
          creativeTrendBeatCollCommentsCreateId + amount;

  bool hasCreativeTrendBeatCollCommentsCreateId() =>
      _creativeTrendBeatCollCommentsCreateId != null;

  // "CreativeTrendBeatCollComments_post_ref" field.
  int? _creativeTrendBeatCollCommentsPostRef;
  int get creativeTrendBeatCollCommentsPostRef =>
      _creativeTrendBeatCollCommentsPostRef ?? 0;
  set creativeTrendBeatCollCommentsPostRef(int? val) =>
      _creativeTrendBeatCollCommentsPostRef = val;

  void incrementCreativeTrendBeatCollCommentsPostRef(int amount) =>
      creativeTrendBeatCollCommentsPostRef =
          creativeTrendBeatCollCommentsPostRef + amount;

  bool hasCreativeTrendBeatCollCommentsPostRef() =>
      _creativeTrendBeatCollCommentsPostRef != null;

  // "CreativeTrendBeatCollComments_create_time" field.
  DateTime? _creativeTrendBeatCollCommentsCreateTime;
  DateTime? get creativeTrendBeatCollCommentsCreateTime =>
      _creativeTrendBeatCollCommentsCreateTime;
  set creativeTrendBeatCollCommentsCreateTime(DateTime? val) =>
      _creativeTrendBeatCollCommentsCreateTime = val;

  bool hasCreativeTrendBeatCollCommentsCreateTime() =>
      _creativeTrendBeatCollCommentsCreateTime != null;

  static CreativeTrendBeatCollCommentsStruct fromMap(
          Map<String, dynamic> data) =>
      CreativeTrendBeatCollCommentsStruct(
        creativeTrendBeatCollCommentsContent:
            data['CreativeTrendBeatCollComments_content'] as String?,
        creativeTrendBeatCollCommentsCreateId:
            castToType<int>(data['CreativeTrendBeatCollComments_create_id']),
        creativeTrendBeatCollCommentsPostRef:
            castToType<int>(data['CreativeTrendBeatCollComments_post_ref']),
        creativeTrendBeatCollCommentsCreateTime:
            data['CreativeTrendBeatCollComments_create_time'] as DateTime?,
      );

  static CreativeTrendBeatCollCommentsStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? CreativeTrendBeatCollCommentsStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'CreativeTrendBeatCollComments_content':
            _creativeTrendBeatCollCommentsContent,
        'CreativeTrendBeatCollComments_create_id':
            _creativeTrendBeatCollCommentsCreateId,
        'CreativeTrendBeatCollComments_post_ref':
            _creativeTrendBeatCollCommentsPostRef,
        'CreativeTrendBeatCollComments_create_time':
            _creativeTrendBeatCollCommentsCreateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CreativeTrendBeatCollComments_content': serializeParam(
          _creativeTrendBeatCollCommentsContent,
          ParamType.String,
        ),
        'CreativeTrendBeatCollComments_create_id': serializeParam(
          _creativeTrendBeatCollCommentsCreateId,
          ParamType.int,
        ),
        'CreativeTrendBeatCollComments_post_ref': serializeParam(
          _creativeTrendBeatCollCommentsPostRef,
          ParamType.int,
        ),
        'CreativeTrendBeatCollComments_create_time': serializeParam(
          _creativeTrendBeatCollCommentsCreateTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CreativeTrendBeatCollCommentsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CreativeTrendBeatCollCommentsStruct(
        creativeTrendBeatCollCommentsContent: deserializeParam(
          data['CreativeTrendBeatCollComments_content'],
          ParamType.String,
          false,
        ),
        creativeTrendBeatCollCommentsCreateId: deserializeParam(
          data['CreativeTrendBeatCollComments_create_id'],
          ParamType.int,
          false,
        ),
        creativeTrendBeatCollCommentsPostRef: deserializeParam(
          data['CreativeTrendBeatCollComments_post_ref'],
          ParamType.int,
          false,
        ),
        creativeTrendBeatCollCommentsCreateTime: deserializeParam(
          data['CreativeTrendBeatCollComments_create_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CreativeTrendBeatCollCommentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreativeTrendBeatCollCommentsStruct &&
        creativeTrendBeatCollCommentsContent ==
            other.creativeTrendBeatCollCommentsContent &&
        creativeTrendBeatCollCommentsCreateId ==
            other.creativeTrendBeatCollCommentsCreateId &&
        creativeTrendBeatCollCommentsPostRef ==
            other.creativeTrendBeatCollCommentsPostRef &&
        creativeTrendBeatCollCommentsCreateTime ==
            other.creativeTrendBeatCollCommentsCreateTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        creativeTrendBeatCollCommentsContent,
        creativeTrendBeatCollCommentsCreateId,
        creativeTrendBeatCollCommentsPostRef,
        creativeTrendBeatCollCommentsCreateTime
      ]);
}

CreativeTrendBeatCollCommentsStruct createCreativeTrendBeatCollCommentsStruct({
  String? creativeTrendBeatCollCommentsContent,
  int? creativeTrendBeatCollCommentsCreateId,
  int? creativeTrendBeatCollCommentsPostRef,
  DateTime? creativeTrendBeatCollCommentsCreateTime,
}) =>
    CreativeTrendBeatCollCommentsStruct(
      creativeTrendBeatCollCommentsContent:
          creativeTrendBeatCollCommentsContent,
      creativeTrendBeatCollCommentsCreateId:
          creativeTrendBeatCollCommentsCreateId,
      creativeTrendBeatCollCommentsPostRef:
          creativeTrendBeatCollCommentsPostRef,
      creativeTrendBeatCollCommentsCreateTime:
          creativeTrendBeatCollCommentsCreateTime,
    );
