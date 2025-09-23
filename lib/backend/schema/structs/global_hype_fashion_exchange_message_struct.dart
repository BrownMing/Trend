// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GlobalHypeFashionExchangeMessageStruct extends BaseStruct {
  GlobalHypeFashionExchangeMessageStruct({
    String? globalHypeFashionExchangeMessageContent,
    int? globalHypeFashionExchangeMessageCreateId,
    int? globalHypeFashionExchangeMessageChatref,
  })  : _globalHypeFashionExchangeMessageContent =
            globalHypeFashionExchangeMessageContent,
        _globalHypeFashionExchangeMessageCreateId =
            globalHypeFashionExchangeMessageCreateId,
        _globalHypeFashionExchangeMessageChatref =
            globalHypeFashionExchangeMessageChatref;

  // "GlobalHypeFashionExchangeMessage_content" field.
  String? _globalHypeFashionExchangeMessageContent;
  String get globalHypeFashionExchangeMessageContent =>
      _globalHypeFashionExchangeMessageContent ?? '';
  set globalHypeFashionExchangeMessageContent(String? val) =>
      _globalHypeFashionExchangeMessageContent = val;

  bool hasGlobalHypeFashionExchangeMessageContent() =>
      _globalHypeFashionExchangeMessageContent != null;

  // "GlobalHypeFashionExchangeMessage_create_id" field.
  int? _globalHypeFashionExchangeMessageCreateId;
  int get globalHypeFashionExchangeMessageCreateId =>
      _globalHypeFashionExchangeMessageCreateId ?? 0;
  set globalHypeFashionExchangeMessageCreateId(int? val) =>
      _globalHypeFashionExchangeMessageCreateId = val;

  void incrementGlobalHypeFashionExchangeMessageCreateId(int amount) =>
      globalHypeFashionExchangeMessageCreateId =
          globalHypeFashionExchangeMessageCreateId + amount;

  bool hasGlobalHypeFashionExchangeMessageCreateId() =>
      _globalHypeFashionExchangeMessageCreateId != null;

  // "GlobalHypeFashionExchangeMessage_chatref" field.
  int? _globalHypeFashionExchangeMessageChatref;
  int get globalHypeFashionExchangeMessageChatref =>
      _globalHypeFashionExchangeMessageChatref ?? 0;
  set globalHypeFashionExchangeMessageChatref(int? val) =>
      _globalHypeFashionExchangeMessageChatref = val;

  void incrementGlobalHypeFashionExchangeMessageChatref(int amount) =>
      globalHypeFashionExchangeMessageChatref =
          globalHypeFashionExchangeMessageChatref + amount;

  bool hasGlobalHypeFashionExchangeMessageChatref() =>
      _globalHypeFashionExchangeMessageChatref != null;

  static GlobalHypeFashionExchangeMessageStruct fromMap(
          Map<String, dynamic> data) =>
      GlobalHypeFashionExchangeMessageStruct(
        globalHypeFashionExchangeMessageContent:
            data['GlobalHypeFashionExchangeMessage_content'] as String?,
        globalHypeFashionExchangeMessageCreateId:
            castToType<int>(data['GlobalHypeFashionExchangeMessage_create_id']),
        globalHypeFashionExchangeMessageChatref:
            castToType<int>(data['GlobalHypeFashionExchangeMessage_chatref']),
      );

  static GlobalHypeFashionExchangeMessageStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? GlobalHypeFashionExchangeMessageStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'GlobalHypeFashionExchangeMessage_content':
            _globalHypeFashionExchangeMessageContent,
        'GlobalHypeFashionExchangeMessage_create_id':
            _globalHypeFashionExchangeMessageCreateId,
        'GlobalHypeFashionExchangeMessage_chatref':
            _globalHypeFashionExchangeMessageChatref,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'GlobalHypeFashionExchangeMessage_content': serializeParam(
          _globalHypeFashionExchangeMessageContent,
          ParamType.String,
        ),
        'GlobalHypeFashionExchangeMessage_create_id': serializeParam(
          _globalHypeFashionExchangeMessageCreateId,
          ParamType.int,
        ),
        'GlobalHypeFashionExchangeMessage_chatref': serializeParam(
          _globalHypeFashionExchangeMessageChatref,
          ParamType.int,
        ),
      }.withoutNulls;

  static GlobalHypeFashionExchangeMessageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GlobalHypeFashionExchangeMessageStruct(
        globalHypeFashionExchangeMessageContent: deserializeParam(
          data['GlobalHypeFashionExchangeMessage_content'],
          ParamType.String,
          false,
        ),
        globalHypeFashionExchangeMessageCreateId: deserializeParam(
          data['GlobalHypeFashionExchangeMessage_create_id'],
          ParamType.int,
          false,
        ),
        globalHypeFashionExchangeMessageChatref: deserializeParam(
          data['GlobalHypeFashionExchangeMessage_chatref'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GlobalHypeFashionExchangeMessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GlobalHypeFashionExchangeMessageStruct &&
        globalHypeFashionExchangeMessageContent ==
            other.globalHypeFashionExchangeMessageContent &&
        globalHypeFashionExchangeMessageCreateId ==
            other.globalHypeFashionExchangeMessageCreateId &&
        globalHypeFashionExchangeMessageChatref ==
            other.globalHypeFashionExchangeMessageChatref;
  }

  @override
  int get hashCode => const ListEquality().hash([
        globalHypeFashionExchangeMessageContent,
        globalHypeFashionExchangeMessageCreateId,
        globalHypeFashionExchangeMessageChatref
      ]);
}

GlobalHypeFashionExchangeMessageStruct
    createGlobalHypeFashionExchangeMessageStruct({
  String? globalHypeFashionExchangeMessageContent,
  int? globalHypeFashionExchangeMessageCreateId,
  int? globalHypeFashionExchangeMessageChatref,
}) =>
        GlobalHypeFashionExchangeMessageStruct(
          globalHypeFashionExchangeMessageContent:
              globalHypeFashionExchangeMessageContent,
          globalHypeFashionExchangeMessageCreateId:
              globalHypeFashionExchangeMessageCreateId,
          globalHypeFashionExchangeMessageChatref:
              globalHypeFashionExchangeMessageChatref,
        );
