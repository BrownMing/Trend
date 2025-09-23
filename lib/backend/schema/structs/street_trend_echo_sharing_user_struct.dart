// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StreetTrendEchoSharingUserStruct extends BaseStruct {
  StreetTrendEchoSharingUserStruct({
    int? streetTrendEchoSharingUserId,
    String? streetTrendEchoSharingUserEmail,
    String? streetTrendEchoSharingUserPassword,
    String? streetTrendEchoSharingUserName,
    String? streetTrendEchoSharingUserPhoto,
    String? streetTrendEchoSharingUserGender,
    String? streetTrendEchoSharingUserDatebirth,
    String? streetTrendEchoSharingUserDescribe,
    int? streetTrendEchoSharingUserBalance,
    List<int>? streetTrendEchoSharingUserFollowings,
    List<int>? streetTrendEchoSharingUserFollowers,
    List<int>? streetTrendEchoSharingUserBlacklist,
    DateTime? streetTrendEchoSharingUserCreateTime,
  })  : _streetTrendEchoSharingUserId = streetTrendEchoSharingUserId,
        _streetTrendEchoSharingUserEmail = streetTrendEchoSharingUserEmail,
        _streetTrendEchoSharingUserPassword =
            streetTrendEchoSharingUserPassword,
        _streetTrendEchoSharingUserName = streetTrendEchoSharingUserName,
        _streetTrendEchoSharingUserPhoto = streetTrendEchoSharingUserPhoto,
        _streetTrendEchoSharingUserGender = streetTrendEchoSharingUserGender,
        _streetTrendEchoSharingUserDatebirth =
            streetTrendEchoSharingUserDatebirth,
        _streetTrendEchoSharingUserDescribe =
            streetTrendEchoSharingUserDescribe,
        _streetTrendEchoSharingUserBalance = streetTrendEchoSharingUserBalance,
        _streetTrendEchoSharingUserFollowings =
            streetTrendEchoSharingUserFollowings,
        _streetTrendEchoSharingUserFollowers =
            streetTrendEchoSharingUserFollowers,
        _streetTrendEchoSharingUserBlacklist =
            streetTrendEchoSharingUserBlacklist,
        _streetTrendEchoSharingUserCreateTime =
            streetTrendEchoSharingUserCreateTime;

  // "StreetTrendEchoSharingUser_id" field.
  int? _streetTrendEchoSharingUserId;
  int get streetTrendEchoSharingUserId => _streetTrendEchoSharingUserId ?? 0;
  set streetTrendEchoSharingUserId(int? val) =>
      _streetTrendEchoSharingUserId = val;

  void incrementStreetTrendEchoSharingUserId(int amount) =>
      streetTrendEchoSharingUserId = streetTrendEchoSharingUserId + amount;

  bool hasStreetTrendEchoSharingUserId() =>
      _streetTrendEchoSharingUserId != null;

  // "StreetTrendEchoSharingUser_email" field.
  String? _streetTrendEchoSharingUserEmail;
  String get streetTrendEchoSharingUserEmail =>
      _streetTrendEchoSharingUserEmail ?? '';
  set streetTrendEchoSharingUserEmail(String? val) =>
      _streetTrendEchoSharingUserEmail = val;

  bool hasStreetTrendEchoSharingUserEmail() =>
      _streetTrendEchoSharingUserEmail != null;

  // "StreetTrendEchoSharingUser_password" field.
  String? _streetTrendEchoSharingUserPassword;
  String get streetTrendEchoSharingUserPassword =>
      _streetTrendEchoSharingUserPassword ?? '';
  set streetTrendEchoSharingUserPassword(String? val) =>
      _streetTrendEchoSharingUserPassword = val;

  bool hasStreetTrendEchoSharingUserPassword() =>
      _streetTrendEchoSharingUserPassword != null;

  // "StreetTrendEchoSharingUser_name" field.
  String? _streetTrendEchoSharingUserName;
  String get streetTrendEchoSharingUserName =>
      _streetTrendEchoSharingUserName ?? '';
  set streetTrendEchoSharingUserName(String? val) =>
      _streetTrendEchoSharingUserName = val;

  bool hasStreetTrendEchoSharingUserName() =>
      _streetTrendEchoSharingUserName != null;

  // "StreetTrendEchoSharingUser_photo" field.
  String? _streetTrendEchoSharingUserPhoto;
  String get streetTrendEchoSharingUserPhoto =>
      _streetTrendEchoSharingUserPhoto ?? '';
  set streetTrendEchoSharingUserPhoto(String? val) =>
      _streetTrendEchoSharingUserPhoto = val;

  bool hasStreetTrendEchoSharingUserPhoto() =>
      _streetTrendEchoSharingUserPhoto != null;

  // "StreetTrendEchoSharingUser_gender" field.
  String? _streetTrendEchoSharingUserGender;
  String get streetTrendEchoSharingUserGender =>
      _streetTrendEchoSharingUserGender ?? '';
  set streetTrendEchoSharingUserGender(String? val) =>
      _streetTrendEchoSharingUserGender = val;

  bool hasStreetTrendEchoSharingUserGender() =>
      _streetTrendEchoSharingUserGender != null;

  // "StreetTrendEchoSharingUser_datebirth" field.
  String? _streetTrendEchoSharingUserDatebirth;
  String get streetTrendEchoSharingUserDatebirth =>
      _streetTrendEchoSharingUserDatebirth ?? '';
  set streetTrendEchoSharingUserDatebirth(String? val) =>
      _streetTrendEchoSharingUserDatebirth = val;

  bool hasStreetTrendEchoSharingUserDatebirth() =>
      _streetTrendEchoSharingUserDatebirth != null;

  // "StreetTrendEchoSharingUser_describe" field.
  String? _streetTrendEchoSharingUserDescribe;
  String get streetTrendEchoSharingUserDescribe =>
      _streetTrendEchoSharingUserDescribe ?? '';
  set streetTrendEchoSharingUserDescribe(String? val) =>
      _streetTrendEchoSharingUserDescribe = val;

  bool hasStreetTrendEchoSharingUserDescribe() =>
      _streetTrendEchoSharingUserDescribe != null;

  // "StreetTrendEchoSharingUser_balance" field.
  int? _streetTrendEchoSharingUserBalance;
  int get streetTrendEchoSharingUserBalance =>
      _streetTrendEchoSharingUserBalance ?? 0;
  set streetTrendEchoSharingUserBalance(int? val) =>
      _streetTrendEchoSharingUserBalance = val;

  void incrementStreetTrendEchoSharingUserBalance(int amount) =>
      streetTrendEchoSharingUserBalance =
          streetTrendEchoSharingUserBalance + amount;

  bool hasStreetTrendEchoSharingUserBalance() =>
      _streetTrendEchoSharingUserBalance != null;

  // "StreetTrendEchoSharingUser_followings" field.
  List<int>? _streetTrendEchoSharingUserFollowings;
  List<int> get streetTrendEchoSharingUserFollowings =>
      _streetTrendEchoSharingUserFollowings ?? const [];
  set streetTrendEchoSharingUserFollowings(List<int>? val) =>
      _streetTrendEchoSharingUserFollowings = val;

  void updateStreetTrendEchoSharingUserFollowings(
      Function(List<int>) updateFn) {
    updateFn(_streetTrendEchoSharingUserFollowings ??= []);
  }

  bool hasStreetTrendEchoSharingUserFollowings() =>
      _streetTrendEchoSharingUserFollowings != null;

  // "StreetTrendEchoSharingUser_followers" field.
  List<int>? _streetTrendEchoSharingUserFollowers;
  List<int> get streetTrendEchoSharingUserFollowers =>
      _streetTrendEchoSharingUserFollowers ?? const [];
  set streetTrendEchoSharingUserFollowers(List<int>? val) =>
      _streetTrendEchoSharingUserFollowers = val;

  void updateStreetTrendEchoSharingUserFollowers(Function(List<int>) updateFn) {
    updateFn(_streetTrendEchoSharingUserFollowers ??= []);
  }

  bool hasStreetTrendEchoSharingUserFollowers() =>
      _streetTrendEchoSharingUserFollowers != null;

  // "StreetTrendEchoSharingUser_blacklist" field.
  List<int>? _streetTrendEchoSharingUserBlacklist;
  List<int> get streetTrendEchoSharingUserBlacklist =>
      _streetTrendEchoSharingUserBlacklist ?? const [];
  set streetTrendEchoSharingUserBlacklist(List<int>? val) =>
      _streetTrendEchoSharingUserBlacklist = val;

  void updateStreetTrendEchoSharingUserBlacklist(Function(List<int>) updateFn) {
    updateFn(_streetTrendEchoSharingUserBlacklist ??= []);
  }

  bool hasStreetTrendEchoSharingUserBlacklist() =>
      _streetTrendEchoSharingUserBlacklist != null;

  // "StreetTrendEchoSharingUser_create_time" field.
  DateTime? _streetTrendEchoSharingUserCreateTime;
  DateTime? get streetTrendEchoSharingUserCreateTime =>
      _streetTrendEchoSharingUserCreateTime;
  set streetTrendEchoSharingUserCreateTime(DateTime? val) =>
      _streetTrendEchoSharingUserCreateTime = val;

  bool hasStreetTrendEchoSharingUserCreateTime() =>
      _streetTrendEchoSharingUserCreateTime != null;

  static StreetTrendEchoSharingUserStruct fromMap(Map<String, dynamic> data) =>
      StreetTrendEchoSharingUserStruct(
        streetTrendEchoSharingUserId:
            castToType<int>(data['StreetTrendEchoSharingUser_id']),
        streetTrendEchoSharingUserEmail:
            data['StreetTrendEchoSharingUser_email'] as String?,
        streetTrendEchoSharingUserPassword:
            data['StreetTrendEchoSharingUser_password'] as String?,
        streetTrendEchoSharingUserName:
            data['StreetTrendEchoSharingUser_name'] as String?,
        streetTrendEchoSharingUserPhoto:
            data['StreetTrendEchoSharingUser_photo'] as String?,
        streetTrendEchoSharingUserGender:
            data['StreetTrendEchoSharingUser_gender'] as String?,
        streetTrendEchoSharingUserDatebirth:
            data['StreetTrendEchoSharingUser_datebirth'] as String?,
        streetTrendEchoSharingUserDescribe:
            data['StreetTrendEchoSharingUser_describe'] as String?,
        streetTrendEchoSharingUserBalance:
            castToType<int>(data['StreetTrendEchoSharingUser_balance']),
        streetTrendEchoSharingUserFollowings:
            getDataList(data['StreetTrendEchoSharingUser_followings']),
        streetTrendEchoSharingUserFollowers:
            getDataList(data['StreetTrendEchoSharingUser_followers']),
        streetTrendEchoSharingUserBlacklist:
            getDataList(data['StreetTrendEchoSharingUser_blacklist']),
        streetTrendEchoSharingUserCreateTime:
            data['StreetTrendEchoSharingUser_create_time'] as DateTime?,
      );

  static StreetTrendEchoSharingUserStruct? maybeFromMap(dynamic data) => data
          is Map
      ? StreetTrendEchoSharingUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'StreetTrendEchoSharingUser_id': _streetTrendEchoSharingUserId,
        'StreetTrendEchoSharingUser_email': _streetTrendEchoSharingUserEmail,
        'StreetTrendEchoSharingUser_password':
            _streetTrendEchoSharingUserPassword,
        'StreetTrendEchoSharingUser_name': _streetTrendEchoSharingUserName,
        'StreetTrendEchoSharingUser_photo': _streetTrendEchoSharingUserPhoto,
        'StreetTrendEchoSharingUser_gender': _streetTrendEchoSharingUserGender,
        'StreetTrendEchoSharingUser_datebirth':
            _streetTrendEchoSharingUserDatebirth,
        'StreetTrendEchoSharingUser_describe':
            _streetTrendEchoSharingUserDescribe,
        'StreetTrendEchoSharingUser_balance':
            _streetTrendEchoSharingUserBalance,
        'StreetTrendEchoSharingUser_followings':
            _streetTrendEchoSharingUserFollowings,
        'StreetTrendEchoSharingUser_followers':
            _streetTrendEchoSharingUserFollowers,
        'StreetTrendEchoSharingUser_blacklist':
            _streetTrendEchoSharingUserBlacklist,
        'StreetTrendEchoSharingUser_create_time':
            _streetTrendEchoSharingUserCreateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'StreetTrendEchoSharingUser_id': serializeParam(
          _streetTrendEchoSharingUserId,
          ParamType.int,
        ),
        'StreetTrendEchoSharingUser_email': serializeParam(
          _streetTrendEchoSharingUserEmail,
          ParamType.String,
        ),
        'StreetTrendEchoSharingUser_password': serializeParam(
          _streetTrendEchoSharingUserPassword,
          ParamType.String,
        ),
        'StreetTrendEchoSharingUser_name': serializeParam(
          _streetTrendEchoSharingUserName,
          ParamType.String,
        ),
        'StreetTrendEchoSharingUser_photo': serializeParam(
          _streetTrendEchoSharingUserPhoto,
          ParamType.String,
        ),
        'StreetTrendEchoSharingUser_gender': serializeParam(
          _streetTrendEchoSharingUserGender,
          ParamType.String,
        ),
        'StreetTrendEchoSharingUser_datebirth': serializeParam(
          _streetTrendEchoSharingUserDatebirth,
          ParamType.String,
        ),
        'StreetTrendEchoSharingUser_describe': serializeParam(
          _streetTrendEchoSharingUserDescribe,
          ParamType.String,
        ),
        'StreetTrendEchoSharingUser_balance': serializeParam(
          _streetTrendEchoSharingUserBalance,
          ParamType.int,
        ),
        'StreetTrendEchoSharingUser_followings': serializeParam(
          _streetTrendEchoSharingUserFollowings,
          ParamType.int,
          isList: true,
        ),
        'StreetTrendEchoSharingUser_followers': serializeParam(
          _streetTrendEchoSharingUserFollowers,
          ParamType.int,
          isList: true,
        ),
        'StreetTrendEchoSharingUser_blacklist': serializeParam(
          _streetTrendEchoSharingUserBlacklist,
          ParamType.int,
          isList: true,
        ),
        'StreetTrendEchoSharingUser_create_time': serializeParam(
          _streetTrendEchoSharingUserCreateTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static StreetTrendEchoSharingUserStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StreetTrendEchoSharingUserStruct(
        streetTrendEchoSharingUserId: deserializeParam(
          data['StreetTrendEchoSharingUser_id'],
          ParamType.int,
          false,
        ),
        streetTrendEchoSharingUserEmail: deserializeParam(
          data['StreetTrendEchoSharingUser_email'],
          ParamType.String,
          false,
        ),
        streetTrendEchoSharingUserPassword: deserializeParam(
          data['StreetTrendEchoSharingUser_password'],
          ParamType.String,
          false,
        ),
        streetTrendEchoSharingUserName: deserializeParam(
          data['StreetTrendEchoSharingUser_name'],
          ParamType.String,
          false,
        ),
        streetTrendEchoSharingUserPhoto: deserializeParam(
          data['StreetTrendEchoSharingUser_photo'],
          ParamType.String,
          false,
        ),
        streetTrendEchoSharingUserGender: deserializeParam(
          data['StreetTrendEchoSharingUser_gender'],
          ParamType.String,
          false,
        ),
        streetTrendEchoSharingUserDatebirth: deserializeParam(
          data['StreetTrendEchoSharingUser_datebirth'],
          ParamType.String,
          false,
        ),
        streetTrendEchoSharingUserDescribe: deserializeParam(
          data['StreetTrendEchoSharingUser_describe'],
          ParamType.String,
          false,
        ),
        streetTrendEchoSharingUserBalance: deserializeParam(
          data['StreetTrendEchoSharingUser_balance'],
          ParamType.int,
          false,
        ),
        streetTrendEchoSharingUserFollowings: deserializeParam<int>(
          data['StreetTrendEchoSharingUser_followings'],
          ParamType.int,
          true,
        ),
        streetTrendEchoSharingUserFollowers: deserializeParam<int>(
          data['StreetTrendEchoSharingUser_followers'],
          ParamType.int,
          true,
        ),
        streetTrendEchoSharingUserBlacklist: deserializeParam<int>(
          data['StreetTrendEchoSharingUser_blacklist'],
          ParamType.int,
          true,
        ),
        streetTrendEchoSharingUserCreateTime: deserializeParam(
          data['StreetTrendEchoSharingUser_create_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'StreetTrendEchoSharingUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StreetTrendEchoSharingUserStruct &&
        streetTrendEchoSharingUserId == other.streetTrendEchoSharingUserId &&
        streetTrendEchoSharingUserEmail ==
            other.streetTrendEchoSharingUserEmail &&
        streetTrendEchoSharingUserPassword ==
            other.streetTrendEchoSharingUserPassword &&
        streetTrendEchoSharingUserName ==
            other.streetTrendEchoSharingUserName &&
        streetTrendEchoSharingUserPhoto ==
            other.streetTrendEchoSharingUserPhoto &&
        streetTrendEchoSharingUserGender ==
            other.streetTrendEchoSharingUserGender &&
        streetTrendEchoSharingUserDatebirth ==
            other.streetTrendEchoSharingUserDatebirth &&
        streetTrendEchoSharingUserDescribe ==
            other.streetTrendEchoSharingUserDescribe &&
        streetTrendEchoSharingUserBalance ==
            other.streetTrendEchoSharingUserBalance &&
        listEquality.equals(streetTrendEchoSharingUserFollowings,
            other.streetTrendEchoSharingUserFollowings) &&
        listEquality.equals(streetTrendEchoSharingUserFollowers,
            other.streetTrendEchoSharingUserFollowers) &&
        listEquality.equals(streetTrendEchoSharingUserBlacklist,
            other.streetTrendEchoSharingUserBlacklist) &&
        streetTrendEchoSharingUserCreateTime ==
            other.streetTrendEchoSharingUserCreateTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        streetTrendEchoSharingUserId,
        streetTrendEchoSharingUserEmail,
        streetTrendEchoSharingUserPassword,
        streetTrendEchoSharingUserName,
        streetTrendEchoSharingUserPhoto,
        streetTrendEchoSharingUserGender,
        streetTrendEchoSharingUserDatebirth,
        streetTrendEchoSharingUserDescribe,
        streetTrendEchoSharingUserBalance,
        streetTrendEchoSharingUserFollowings,
        streetTrendEchoSharingUserFollowers,
        streetTrendEchoSharingUserBlacklist,
        streetTrendEchoSharingUserCreateTime
      ]);
}

StreetTrendEchoSharingUserStruct createStreetTrendEchoSharingUserStruct({
  int? streetTrendEchoSharingUserId,
  String? streetTrendEchoSharingUserEmail,
  String? streetTrendEchoSharingUserPassword,
  String? streetTrendEchoSharingUserName,
  String? streetTrendEchoSharingUserPhoto,
  String? streetTrendEchoSharingUserGender,
  String? streetTrendEchoSharingUserDatebirth,
  String? streetTrendEchoSharingUserDescribe,
  int? streetTrendEchoSharingUserBalance,
  DateTime? streetTrendEchoSharingUserCreateTime,
}) =>
    StreetTrendEchoSharingUserStruct(
      streetTrendEchoSharingUserId: streetTrendEchoSharingUserId,
      streetTrendEchoSharingUserEmail: streetTrendEchoSharingUserEmail,
      streetTrendEchoSharingUserPassword: streetTrendEchoSharingUserPassword,
      streetTrendEchoSharingUserName: streetTrendEchoSharingUserName,
      streetTrendEchoSharingUserPhoto: streetTrendEchoSharingUserPhoto,
      streetTrendEchoSharingUserGender: streetTrendEchoSharingUserGender,
      streetTrendEchoSharingUserDatebirth: streetTrendEchoSharingUserDatebirth,
      streetTrendEchoSharingUserDescribe: streetTrendEchoSharingUserDescribe,
      streetTrendEchoSharingUserBalance: streetTrendEchoSharingUserBalance,
      streetTrendEchoSharingUserCreateTime:
          streetTrendEchoSharingUserCreateTime,
    );
