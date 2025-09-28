// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';

class NextGenStreetwearShowcaseChatStruct extends BaseStruct {
  NextGenStreetwearShowcaseChatStruct({
    int? nextGenStreetwearShowcaseChatId,
    String? nextGenStreetwearShowcaseChatLastMsg,
    DateTime? nextGenStreetwearShowcaseChatLastTime,
    int? nextGenStreetwearShowcaseChatOtherId,
    int? nextGenStreetwearShowcaseChatCurrentId,
  })  : _nextGenStreetwearShowcaseChatId = nextGenStreetwearShowcaseChatId,
        _nextGenStreetwearShowcaseChatLastMsg =
            nextGenStreetwearShowcaseChatLastMsg,
        _nextGenStreetwearShowcaseChatLastTime =
            nextGenStreetwearShowcaseChatLastTime,
        _nextGenStreetwearShowcaseChatOtherId =
            nextGenStreetwearShowcaseChatOtherId,
        _nextGenStreetwearShowcaseChatCurrentId =
            nextGenStreetwearShowcaseChatCurrentId;

  // "NextGenStreetwearShowcaseChat_id" field.
  int? _nextGenStreetwearShowcaseChatId;
  int get nextGenStreetwearShowcaseChatId =>
      _nextGenStreetwearShowcaseChatId ?? 0;
  set nextGenStreetwearShowcaseChatId(int? val) =>
      _nextGenStreetwearShowcaseChatId = val;

  void incrementNextGenStreetwearShowcaseChatId(int amount) =>
      nextGenStreetwearShowcaseChatId =
          nextGenStreetwearShowcaseChatId + amount;

  bool hasNextGenStreetwearShowcaseChatId() =>
      _nextGenStreetwearShowcaseChatId != null;

  // "NextGenStreetwearShowcaseChat_last_msg" field.
  String? _nextGenStreetwearShowcaseChatLastMsg;
  String get nextGenStreetwearShowcaseChatLastMsg =>
      _nextGenStreetwearShowcaseChatLastMsg ?? '';
  set nextGenStreetwearShowcaseChatLastMsg(String? val) =>
      _nextGenStreetwearShowcaseChatLastMsg = val;

  bool hasNextGenStreetwearShowcaseChatLastMsg() =>
      _nextGenStreetwearShowcaseChatLastMsg != null;

  // "NextGenStreetwearShowcaseChat_last_time" field.
  DateTime? _nextGenStreetwearShowcaseChatLastTime;
  DateTime? get nextGenStreetwearShowcaseChatLastTime =>
      _nextGenStreetwearShowcaseChatLastTime;
  set nextGenStreetwearShowcaseChatLastTime(DateTime? val) =>
      _nextGenStreetwearShowcaseChatLastTime = val;

  bool hasNextGenStreetwearShowcaseChatLastTime() =>
      _nextGenStreetwearShowcaseChatLastTime != null;

  // "NextGenStreetwearShowcaseChat_other_id" field.
  int? _nextGenStreetwearShowcaseChatOtherId;
  int get nextGenStreetwearShowcaseChatOtherId =>
      _nextGenStreetwearShowcaseChatOtherId ?? 0;
  set nextGenStreetwearShowcaseChatOtherId(int? val) =>
      _nextGenStreetwearShowcaseChatOtherId = val;

  void incrementNextGenStreetwearShowcaseChatOtherId(int amount) =>
      nextGenStreetwearShowcaseChatOtherId =
          nextGenStreetwearShowcaseChatOtherId + amount;

  bool hasNextGenStreetwearShowcaseChatOtherId() =>
      _nextGenStreetwearShowcaseChatOtherId != null;

  // "NextGenStreetwearShowcaseChat_current_id" field.
  int? _nextGenStreetwearShowcaseChatCurrentId;
  int get nextGenStreetwearShowcaseChatCurrentId =>
      _nextGenStreetwearShowcaseChatCurrentId ?? 0;
  set nextGenStreetwearShowcaseChatCurrentId(int? val) =>
      _nextGenStreetwearShowcaseChatCurrentId = val;

  void incrementNextGenStreetwearShowcaseChatCurrentId(int amount) =>
      nextGenStreetwearShowcaseChatCurrentId =
          nextGenStreetwearShowcaseChatCurrentId + amount;

  bool hasNextGenStreetwearShowcaseChatCurrentId() =>
      _nextGenStreetwearShowcaseChatCurrentId != null;

  static NextGenStreetwearShowcaseChatStruct fromMap(
          Map<String, dynamic> data) =>
      NextGenStreetwearShowcaseChatStruct(
        nextGenStreetwearShowcaseChatId:
            castToType<int>(data['NextGenStreetwearShowcaseChat_id']),
        nextGenStreetwearShowcaseChatLastMsg:
            data['NextGenStreetwearShowcaseChat_last_msg'] as String?,
        nextGenStreetwearShowcaseChatLastTime:
            data['NextGenStreetwearShowcaseChat_last_time'] as DateTime?,
        nextGenStreetwearShowcaseChatOtherId:
            castToType<int>(data['NextGenStreetwearShowcaseChat_other_id']),
        nextGenStreetwearShowcaseChatCurrentId:
            castToType<int>(data['NextGenStreetwearShowcaseChat_current_id']),
      );

  static NextGenStreetwearShowcaseChatStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? NextGenStreetwearShowcaseChatStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'NextGenStreetwearShowcaseChat_id': _nextGenStreetwearShowcaseChatId,
        'NextGenStreetwearShowcaseChat_last_msg':
            _nextGenStreetwearShowcaseChatLastMsg,
        'NextGenStreetwearShowcaseChat_last_time':
            _nextGenStreetwearShowcaseChatLastTime,
        'NextGenStreetwearShowcaseChat_other_id':
            _nextGenStreetwearShowcaseChatOtherId,
        'NextGenStreetwearShowcaseChat_current_id':
            _nextGenStreetwearShowcaseChatCurrentId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'NextGenStreetwearShowcaseChat_id': serializeParam(
          _nextGenStreetwearShowcaseChatId,
          ParamType.int,
        ),
        'NextGenStreetwearShowcaseChat_last_msg': serializeParam(
          _nextGenStreetwearShowcaseChatLastMsg,
          ParamType.String,
        ),
        'NextGenStreetwearShowcaseChat_last_time': serializeParam(
          _nextGenStreetwearShowcaseChatLastTime,
          ParamType.DateTime,
        ),
        'NextGenStreetwearShowcaseChat_other_id': serializeParam(
          _nextGenStreetwearShowcaseChatOtherId,
          ParamType.int,
        ),
        'NextGenStreetwearShowcaseChat_current_id': serializeParam(
          _nextGenStreetwearShowcaseChatCurrentId,
          ParamType.int,
        ),
      }.withoutNulls;

  static NextGenStreetwearShowcaseChatStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      NextGenStreetwearShowcaseChatStruct(
        nextGenStreetwearShowcaseChatId: deserializeParam(
          data['NextGenStreetwearShowcaseChat_id'],
          ParamType.int,
          false,
        ),
        nextGenStreetwearShowcaseChatLastMsg: deserializeParam(
          data['NextGenStreetwearShowcaseChat_last_msg'],
          ParamType.String,
          false,
        ),
        nextGenStreetwearShowcaseChatLastTime: deserializeParam(
          data['NextGenStreetwearShowcaseChat_last_time'],
          ParamType.DateTime,
          false,
        ),
        nextGenStreetwearShowcaseChatOtherId: deserializeParam(
          data['NextGenStreetwearShowcaseChat_other_id'],
          ParamType.int,
          false,
        ),
        nextGenStreetwearShowcaseChatCurrentId: deserializeParam(
          data['NextGenStreetwearShowcaseChat_current_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'NextGenStreetwearShowcaseChatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NextGenStreetwearShowcaseChatStruct &&
        nextGenStreetwearShowcaseChatId ==
            other.nextGenStreetwearShowcaseChatId &&
        nextGenStreetwearShowcaseChatLastMsg ==
            other.nextGenStreetwearShowcaseChatLastMsg &&
        nextGenStreetwearShowcaseChatLastTime ==
            other.nextGenStreetwearShowcaseChatLastTime &&
        nextGenStreetwearShowcaseChatOtherId ==
            other.nextGenStreetwearShowcaseChatOtherId &&
        nextGenStreetwearShowcaseChatCurrentId ==
            other.nextGenStreetwearShowcaseChatCurrentId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nextGenStreetwearShowcaseChatId,
        nextGenStreetwearShowcaseChatLastMsg,
        nextGenStreetwearShowcaseChatLastTime,
        nextGenStreetwearShowcaseChatOtherId,
        nextGenStreetwearShowcaseChatCurrentId
      ]);
}

NextGenStreetwearShowcaseChatStruct createNextGenStreetwearShowcaseChatStruct({
  int? nextGenStreetwearShowcaseChatId,
  String? nextGenStreetwearShowcaseChatLastMsg,
  DateTime? nextGenStreetwearShowcaseChatLastTime,
  int? nextGenStreetwearShowcaseChatOtherId,
  int? nextGenStreetwearShowcaseChatCurrentId,
}) =>
    NextGenStreetwearShowcaseChatStruct(
      nextGenStreetwearShowcaseChatId: nextGenStreetwearShowcaseChatId,
      nextGenStreetwearShowcaseChatLastMsg:
          nextGenStreetwearShowcaseChatLastMsg,
      nextGenStreetwearShowcaseChatLastTime:
          nextGenStreetwearShowcaseChatLastTime,
      nextGenStreetwearShowcaseChatOtherId:
          nextGenStreetwearShowcaseChatOtherId,
      nextGenStreetwearShowcaseChatCurrentId:
          nextGenStreetwearShowcaseChatCurrentId,
    );
