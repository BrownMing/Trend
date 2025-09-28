// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';

class WorldFashionSharingCollectiveTrendsStruct extends BaseStruct {
  WorldFashionSharingCollectiveTrendsStruct({
    int? worldFashionSharingCollectiveTrendsId,
    String? worldFashionSharingCollectiveTrendsTitle,
    String? worldFashionSharingCollectiveTrendsSmatilte,
    double? worldFashionSharingCollectiveTrendsStar,
    String? worldFashionSharingCollectiveTrendsPhoto,
    String? worldFashionSharingCollectiveTrendsDescribe,
    List<int>? worldFashionSharingCollectiveTrendsUnlock,
    List<int>? worldFashionSharingCollectiveTrendsLikeUsers,
    int? worldFashionSharingCollectiveTrendsComment,
    List<int>? worldFashionSharingCollectiveTrendsJoinusers,
    int? worldFashionSharingCollectiveTrendsCreateid,
  })  : _worldFashionSharingCollectiveTrendsId =
            worldFashionSharingCollectiveTrendsId,
        _worldFashionSharingCollectiveTrendsTitle =
            worldFashionSharingCollectiveTrendsTitle,
        _worldFashionSharingCollectiveTrendsSmatilte =
            worldFashionSharingCollectiveTrendsSmatilte,
        _worldFashionSharingCollectiveTrendsStar =
            worldFashionSharingCollectiveTrendsStar,
        _worldFashionSharingCollectiveTrendsPhoto =
            worldFashionSharingCollectiveTrendsPhoto,
        _worldFashionSharingCollectiveTrendsDescribe =
            worldFashionSharingCollectiveTrendsDescribe,
        _worldFashionSharingCollectiveTrendsUnlock =
            worldFashionSharingCollectiveTrendsUnlock,
        _worldFashionSharingCollectiveTrendsLikeUsers =
            worldFashionSharingCollectiveTrendsLikeUsers,
        _worldFashionSharingCollectiveTrendsComment =
            worldFashionSharingCollectiveTrendsComment,
        _worldFashionSharingCollectiveTrendsJoinusers =
            worldFashionSharingCollectiveTrendsJoinusers,
        _worldFashionSharingCollectiveTrendsCreateid =
            worldFashionSharingCollectiveTrendsCreateid;

  // "WorldFashionSharingCollectiveTrends_id" field.
  int? _worldFashionSharingCollectiveTrendsId;
  int get worldFashionSharingCollectiveTrendsId =>
      _worldFashionSharingCollectiveTrendsId ?? 0;
  set worldFashionSharingCollectiveTrendsId(int? val) =>
      _worldFashionSharingCollectiveTrendsId = val;

  void incrementWorldFashionSharingCollectiveTrendsId(int amount) =>
      worldFashionSharingCollectiveTrendsId =
          worldFashionSharingCollectiveTrendsId + amount;

  bool hasWorldFashionSharingCollectiveTrendsId() =>
      _worldFashionSharingCollectiveTrendsId != null;

  // "WorldFashionSharingCollectiveTrends_title" field.
  String? _worldFashionSharingCollectiveTrendsTitle;
  String get worldFashionSharingCollectiveTrendsTitle =>
      _worldFashionSharingCollectiveTrendsTitle ?? '';
  set worldFashionSharingCollectiveTrendsTitle(String? val) =>
      _worldFashionSharingCollectiveTrendsTitle = val;

  bool hasWorldFashionSharingCollectiveTrendsTitle() =>
      _worldFashionSharingCollectiveTrendsTitle != null;

  // "WorldFashionSharingCollectiveTrends_smatilte" field.
  String? _worldFashionSharingCollectiveTrendsSmatilte;
  String get worldFashionSharingCollectiveTrendsSmatilte =>
      _worldFashionSharingCollectiveTrendsSmatilte ?? '';
  set worldFashionSharingCollectiveTrendsSmatilte(String? val) =>
      _worldFashionSharingCollectiveTrendsSmatilte = val;

  bool hasWorldFashionSharingCollectiveTrendsSmatilte() =>
      _worldFashionSharingCollectiveTrendsSmatilte != null;

  // "WorldFashionSharingCollectiveTrends_star" field.
  double? _worldFashionSharingCollectiveTrendsStar;
  double get worldFashionSharingCollectiveTrendsStar =>
      _worldFashionSharingCollectiveTrendsStar ?? 0.0;
  set worldFashionSharingCollectiveTrendsStar(double? val) =>
      _worldFashionSharingCollectiveTrendsStar = val;

  void incrementWorldFashionSharingCollectiveTrendsStar(double amount) =>
      worldFashionSharingCollectiveTrendsStar =
          worldFashionSharingCollectiveTrendsStar + amount;

  bool hasWorldFashionSharingCollectiveTrendsStar() =>
      _worldFashionSharingCollectiveTrendsStar != null;

  // "WorldFashionSharingCollectiveTrends_photo" field.
  String? _worldFashionSharingCollectiveTrendsPhoto;
  String get worldFashionSharingCollectiveTrendsPhoto =>
      _worldFashionSharingCollectiveTrendsPhoto ?? '';
  set worldFashionSharingCollectiveTrendsPhoto(String? val) =>
      _worldFashionSharingCollectiveTrendsPhoto = val;

  bool hasWorldFashionSharingCollectiveTrendsPhoto() =>
      _worldFashionSharingCollectiveTrendsPhoto != null;

  // "WorldFashionSharingCollectiveTrends_describe" field.
  String? _worldFashionSharingCollectiveTrendsDescribe;
  String get worldFashionSharingCollectiveTrendsDescribe =>
      _worldFashionSharingCollectiveTrendsDescribe ?? '';
  set worldFashionSharingCollectiveTrendsDescribe(String? val) =>
      _worldFashionSharingCollectiveTrendsDescribe = val;

  bool hasWorldFashionSharingCollectiveTrendsDescribe() =>
      _worldFashionSharingCollectiveTrendsDescribe != null;

  // "WorldFashionSharingCollectiveTrends_unlock" field.
  List<int>? _worldFashionSharingCollectiveTrendsUnlock;
  List<int> get worldFashionSharingCollectiveTrendsUnlock =>
      _worldFashionSharingCollectiveTrendsUnlock ?? const [];
  set worldFashionSharingCollectiveTrendsUnlock(List<int>? val) =>
      _worldFashionSharingCollectiveTrendsUnlock = val;

  void updateWorldFashionSharingCollectiveTrendsUnlock(
      Function(List<int>) updateFn) {
    updateFn(_worldFashionSharingCollectiveTrendsUnlock ??= []);
  }

  bool hasWorldFashionSharingCollectiveTrendsUnlock() =>
      _worldFashionSharingCollectiveTrendsUnlock != null;

  // "WorldFashionSharingCollectiveTrends_like_users" field.
  List<int>? _worldFashionSharingCollectiveTrendsLikeUsers;
  List<int> get worldFashionSharingCollectiveTrendsLikeUsers =>
      _worldFashionSharingCollectiveTrendsLikeUsers ?? const [];
  set worldFashionSharingCollectiveTrendsLikeUsers(List<int>? val) =>
      _worldFashionSharingCollectiveTrendsLikeUsers = val;

  void updateWorldFashionSharingCollectiveTrendsLikeUsers(
      Function(List<int>) updateFn) {
    updateFn(_worldFashionSharingCollectiveTrendsLikeUsers ??= []);
  }

  bool hasWorldFashionSharingCollectiveTrendsLikeUsers() =>
      _worldFashionSharingCollectiveTrendsLikeUsers != null;

  // "WorldFashionSharingCollectiveTrends_comment" field.
  int? _worldFashionSharingCollectiveTrendsComment;
  int get worldFashionSharingCollectiveTrendsComment =>
      _worldFashionSharingCollectiveTrendsComment ?? 0;
  set worldFashionSharingCollectiveTrendsComment(int? val) =>
      _worldFashionSharingCollectiveTrendsComment = val;

  void incrementWorldFashionSharingCollectiveTrendsComment(int amount) =>
      worldFashionSharingCollectiveTrendsComment =
          worldFashionSharingCollectiveTrendsComment + amount;

  bool hasWorldFashionSharingCollectiveTrendsComment() =>
      _worldFashionSharingCollectiveTrendsComment != null;

  // "WorldFashionSharingCollectiveTrends_joinusers" field.
  List<int>? _worldFashionSharingCollectiveTrendsJoinusers;
  List<int> get worldFashionSharingCollectiveTrendsJoinusers =>
      _worldFashionSharingCollectiveTrendsJoinusers ?? const [];
  set worldFashionSharingCollectiveTrendsJoinusers(List<int>? val) =>
      _worldFashionSharingCollectiveTrendsJoinusers = val;

  void updateWorldFashionSharingCollectiveTrendsJoinusers(
      Function(List<int>) updateFn) {
    updateFn(_worldFashionSharingCollectiveTrendsJoinusers ??= []);
  }

  bool hasWorldFashionSharingCollectiveTrendsJoinusers() =>
      _worldFashionSharingCollectiveTrendsJoinusers != null;

  // "WorldFashionSharingCollectiveTrends_createid" field.
  int? _worldFashionSharingCollectiveTrendsCreateid;
  int get worldFashionSharingCollectiveTrendsCreateid =>
      _worldFashionSharingCollectiveTrendsCreateid ?? 0;
  set worldFashionSharingCollectiveTrendsCreateid(int? val) =>
      _worldFashionSharingCollectiveTrendsCreateid = val;

  void incrementWorldFashionSharingCollectiveTrendsCreateid(int amount) =>
      worldFashionSharingCollectiveTrendsCreateid =
          worldFashionSharingCollectiveTrendsCreateid + amount;

  bool hasWorldFashionSharingCollectiveTrendsCreateid() =>
      _worldFashionSharingCollectiveTrendsCreateid != null;

  static WorldFashionSharingCollectiveTrendsStruct fromMap(
          Map<String, dynamic> data) =>
      WorldFashionSharingCollectiveTrendsStruct(
        worldFashionSharingCollectiveTrendsId:
            castToType<int>(data['WorldFashionSharingCollectiveTrends_id']),
        worldFashionSharingCollectiveTrendsTitle:
            data['WorldFashionSharingCollectiveTrends_title'] as String?,
        worldFashionSharingCollectiveTrendsSmatilte:
            data['WorldFashionSharingCollectiveTrends_smatilte'] as String?,
        worldFashionSharingCollectiveTrendsStar: castToType<double>(
            data['WorldFashionSharingCollectiveTrends_star']),
        worldFashionSharingCollectiveTrendsPhoto:
            data['WorldFashionSharingCollectiveTrends_photo'] as String?,
        worldFashionSharingCollectiveTrendsDescribe:
            data['WorldFashionSharingCollectiveTrends_describe'] as String?,
        worldFashionSharingCollectiveTrendsUnlock:
            getDataList(data['WorldFashionSharingCollectiveTrends_unlock']),
        worldFashionSharingCollectiveTrendsLikeUsers:
            getDataList(data['WorldFashionSharingCollectiveTrends_like_users']),
        worldFashionSharingCollectiveTrendsComment: castToType<int>(
            data['WorldFashionSharingCollectiveTrends_comment']),
        worldFashionSharingCollectiveTrendsJoinusers:
            getDataList(data['WorldFashionSharingCollectiveTrends_joinusers']),
        worldFashionSharingCollectiveTrendsCreateid: castToType<int>(
            data['WorldFashionSharingCollectiveTrends_createid']),
      );

  static WorldFashionSharingCollectiveTrendsStruct? maybeFromMap(
          dynamic data) =>
      data is Map
          ? WorldFashionSharingCollectiveTrendsStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'WorldFashionSharingCollectiveTrends_id':
            _worldFashionSharingCollectiveTrendsId,
        'WorldFashionSharingCollectiveTrends_title':
            _worldFashionSharingCollectiveTrendsTitle,
        'WorldFashionSharingCollectiveTrends_smatilte':
            _worldFashionSharingCollectiveTrendsSmatilte,
        'WorldFashionSharingCollectiveTrends_star':
            _worldFashionSharingCollectiveTrendsStar,
        'WorldFashionSharingCollectiveTrends_photo':
            _worldFashionSharingCollectiveTrendsPhoto,
        'WorldFashionSharingCollectiveTrends_describe':
            _worldFashionSharingCollectiveTrendsDescribe,
        'WorldFashionSharingCollectiveTrends_unlock':
            _worldFashionSharingCollectiveTrendsUnlock,
        'WorldFashionSharingCollectiveTrends_like_users':
            _worldFashionSharingCollectiveTrendsLikeUsers,
        'WorldFashionSharingCollectiveTrends_comment':
            _worldFashionSharingCollectiveTrendsComment,
        'WorldFashionSharingCollectiveTrends_joinusers':
            _worldFashionSharingCollectiveTrendsJoinusers,
        'WorldFashionSharingCollectiveTrends_createid':
            _worldFashionSharingCollectiveTrendsCreateid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'WorldFashionSharingCollectiveTrends_id': serializeParam(
          _worldFashionSharingCollectiveTrendsId,
          ParamType.int,
        ),
        'WorldFashionSharingCollectiveTrends_title': serializeParam(
          _worldFashionSharingCollectiveTrendsTitle,
          ParamType.String,
        ),
        'WorldFashionSharingCollectiveTrends_smatilte': serializeParam(
          _worldFashionSharingCollectiveTrendsSmatilte,
          ParamType.String,
        ),
        'WorldFashionSharingCollectiveTrends_star': serializeParam(
          _worldFashionSharingCollectiveTrendsStar,
          ParamType.double,
        ),
        'WorldFashionSharingCollectiveTrends_photo': serializeParam(
          _worldFashionSharingCollectiveTrendsPhoto,
          ParamType.String,
        ),
        'WorldFashionSharingCollectiveTrends_describe': serializeParam(
          _worldFashionSharingCollectiveTrendsDescribe,
          ParamType.String,
        ),
        'WorldFashionSharingCollectiveTrends_unlock': serializeParam(
          _worldFashionSharingCollectiveTrendsUnlock,
          ParamType.int,
          isList: true,
        ),
        'WorldFashionSharingCollectiveTrends_like_users': serializeParam(
          _worldFashionSharingCollectiveTrendsLikeUsers,
          ParamType.int,
          isList: true,
        ),
        'WorldFashionSharingCollectiveTrends_comment': serializeParam(
          _worldFashionSharingCollectiveTrendsComment,
          ParamType.int,
        ),
        'WorldFashionSharingCollectiveTrends_joinusers': serializeParam(
          _worldFashionSharingCollectiveTrendsJoinusers,
          ParamType.int,
          isList: true,
        ),
        'WorldFashionSharingCollectiveTrends_createid': serializeParam(
          _worldFashionSharingCollectiveTrendsCreateid,
          ParamType.int,
        ),
      }.withoutNulls;

  static WorldFashionSharingCollectiveTrendsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      WorldFashionSharingCollectiveTrendsStruct(
        worldFashionSharingCollectiveTrendsId: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_id'],
          ParamType.int,
          false,
        ),
        worldFashionSharingCollectiveTrendsTitle: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_title'],
          ParamType.String,
          false,
        ),
        worldFashionSharingCollectiveTrendsSmatilte: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_smatilte'],
          ParamType.String,
          false,
        ),
        worldFashionSharingCollectiveTrendsStar: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_star'],
          ParamType.double,
          false,
        ),
        worldFashionSharingCollectiveTrendsPhoto: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_photo'],
          ParamType.String,
          false,
        ),
        worldFashionSharingCollectiveTrendsDescribe: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_describe'],
          ParamType.String,
          false,
        ),
        worldFashionSharingCollectiveTrendsUnlock: deserializeParam<int>(
          data['WorldFashionSharingCollectiveTrends_unlock'],
          ParamType.int,
          true,
        ),
        worldFashionSharingCollectiveTrendsLikeUsers: deserializeParam<int>(
          data['WorldFashionSharingCollectiveTrends_like_users'],
          ParamType.int,
          true,
        ),
        worldFashionSharingCollectiveTrendsComment: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_comment'],
          ParamType.int,
          false,
        ),
        worldFashionSharingCollectiveTrendsJoinusers: deserializeParam<int>(
          data['WorldFashionSharingCollectiveTrends_joinusers'],
          ParamType.int,
          true,
        ),
        worldFashionSharingCollectiveTrendsCreateid: deserializeParam(
          data['WorldFashionSharingCollectiveTrends_createid'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WorldFashionSharingCollectiveTrendsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is WorldFashionSharingCollectiveTrendsStruct &&
        worldFashionSharingCollectiveTrendsId ==
            other.worldFashionSharingCollectiveTrendsId &&
        worldFashionSharingCollectiveTrendsTitle ==
            other.worldFashionSharingCollectiveTrendsTitle &&
        worldFashionSharingCollectiveTrendsSmatilte ==
            other.worldFashionSharingCollectiveTrendsSmatilte &&
        worldFashionSharingCollectiveTrendsStar ==
            other.worldFashionSharingCollectiveTrendsStar &&
        worldFashionSharingCollectiveTrendsPhoto ==
            other.worldFashionSharingCollectiveTrendsPhoto &&
        worldFashionSharingCollectiveTrendsDescribe ==
            other.worldFashionSharingCollectiveTrendsDescribe &&
        listEquality.equals(worldFashionSharingCollectiveTrendsUnlock,
            other.worldFashionSharingCollectiveTrendsUnlock) &&
        listEquality.equals(worldFashionSharingCollectiveTrendsLikeUsers,
            other.worldFashionSharingCollectiveTrendsLikeUsers) &&
        worldFashionSharingCollectiveTrendsComment ==
            other.worldFashionSharingCollectiveTrendsComment &&
        listEquality.equals(worldFashionSharingCollectiveTrendsJoinusers,
            other.worldFashionSharingCollectiveTrendsJoinusers) &&
        worldFashionSharingCollectiveTrendsCreateid ==
            other.worldFashionSharingCollectiveTrendsCreateid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        worldFashionSharingCollectiveTrendsId,
        worldFashionSharingCollectiveTrendsTitle,
        worldFashionSharingCollectiveTrendsSmatilte,
        worldFashionSharingCollectiveTrendsStar,
        worldFashionSharingCollectiveTrendsPhoto,
        worldFashionSharingCollectiveTrendsDescribe,
        worldFashionSharingCollectiveTrendsUnlock,
        worldFashionSharingCollectiveTrendsLikeUsers,
        worldFashionSharingCollectiveTrendsComment,
        worldFashionSharingCollectiveTrendsJoinusers,
        worldFashionSharingCollectiveTrendsCreateid
      ]);
}

WorldFashionSharingCollectiveTrendsStruct
    createWorldFashionSharingCollectiveTrendsStruct({
  int? worldFashionSharingCollectiveTrendsId,
  String? worldFashionSharingCollectiveTrendsTitle,
  String? worldFashionSharingCollectiveTrendsSmatilte,
  double? worldFashionSharingCollectiveTrendsStar,
  String? worldFashionSharingCollectiveTrendsPhoto,
  String? worldFashionSharingCollectiveTrendsDescribe,
  int? worldFashionSharingCollectiveTrendsComment,
  int? worldFashionSharingCollectiveTrendsCreateid,
}) =>
        WorldFashionSharingCollectiveTrendsStruct(
          worldFashionSharingCollectiveTrendsId:
              worldFashionSharingCollectiveTrendsId,
          worldFashionSharingCollectiveTrendsTitle:
              worldFashionSharingCollectiveTrendsTitle,
          worldFashionSharingCollectiveTrendsSmatilte:
              worldFashionSharingCollectiveTrendsSmatilte,
          worldFashionSharingCollectiveTrendsStar:
              worldFashionSharingCollectiveTrendsStar,
          worldFashionSharingCollectiveTrendsPhoto:
              worldFashionSharingCollectiveTrendsPhoto,
          worldFashionSharingCollectiveTrendsDescribe:
              worldFashionSharingCollectiveTrendsDescribe,
          worldFashionSharingCollectiveTrendsComment:
              worldFashionSharingCollectiveTrendsComment,
          worldFashionSharingCollectiveTrendsCreateid:
              worldFashionSharingCollectiveTrendsCreateid,
        );
