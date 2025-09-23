import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _urbanOutfitTrendSharingUsers = prefs
              .getStringList('ff_urbanOutfitTrendSharingUsers')
              ?.map((x) {
                try {
                  return StreetTrendEchoSharingUserStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _urbanOutfitTrendSharingUsers;
    });
    _safeInit(() {
      _urbanTrendVisualCollaborationCurrent =
          prefs.getInt('ff_urbanTrendVisualCollaborationCurrent') ??
              _urbanTrendVisualCollaborationCurrent;
    });
    _safeInit(() {
      _sneakerheadCultureConnectPosts = prefs
              .getStringList('ff_sneakerheadCultureConnectPosts')
              ?.map((x) {
                try {
                  return CrossCultureTrendExchangeHubPostsStruct
                      .fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _sneakerheadCultureConnectPosts;
    });
    _safeInit(() {
      _creativeWardrobeFusionCommunPostImages = prefs
              .getStringList('ff_creativeWardrobeFusionCommunPostImages')
              ?.map((x) {
                try {
                  return FutureLifestyleSharingPostImageStruct
                      .fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _creativeWardrobeFusionCommunPostImages;
    });
    _safeInit(() {
      _trendDrivenStyleCollaborationTrends = prefs
              .getStringList('ff_trendDrivenStyleCollaborationTrends')
              ?.map((x) {
                try {
                  return WorldFashionSharingCollectiveTrendsStruct
                      .fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _trendDrivenStyleCollaborationTrends;
    });
    _safeInit(() {
      _modernFashionInfluenceComments = prefs
              .getStringList('ff_modernFashionInfluenceComments')
              ?.map((x) {
                try {
                  return CreativeTrendBeatCollCommentsStruct
                      .fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _modernFashionInfluenceComments;
    });
    _safeInit(() {
      _streetCultureExpressionNetworkChats = prefs
              .getStringList('ff_streetCultureExpressionNetworkChats')
              ?.map((x) {
                try {
                  return NextGenStreetwearShowcaseChatStruct
                      .fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _streetCultureExpressionNetworkChats;
    });
    _safeInit(() {
      _aestheticStyleInspirationMessages = prefs
              .getStringList('ff_aestheticStyleInspirationMessages')
              ?.map((x) {
                try {
                  return GlobalHypeFashionExchangeMessageStruct
                      .fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _aestheticStyleInspirationMessages;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<StreetTrendEchoSharingUserStruct> _urbanOutfitTrendSharingUsers = [
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode(
        '{\"StreetTrendEchoSharingUser_id\":\"0\",\"StreetTrendEchoSharingUser_email\":\"Hello World\",\"StreetTrendEchoSharingUser_password\":\"Hello World\",\"StreetTrendEchoSharingUser_name\":\"Hello World\",\"StreetTrendEchoSharingUser_photo\":\"https://picsum.photos/seed/605/600\",\"StreetTrendEchoSharingUser_gender\":\"Hello World\",\"StreetTrendEchoSharingUser_datebirth\":\"Hello World\",\"StreetTrendEchoSharingUser_describe\":\"Hello World\",\"StreetTrendEchoSharingUser_balance\":\"0\",\"StreetTrendEchoSharingUser_followings\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_followers\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_blacklist\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_create_time\":\"1758535007833\"}')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode(
        '{\"StreetTrendEchoSharingUser_id\":\"0\",\"StreetTrendEchoSharingUser_email\":\"Hello World\",\"StreetTrendEchoSharingUser_password\":\"Hello World\",\"StreetTrendEchoSharingUser_name\":\"Hello World\",\"StreetTrendEchoSharingUser_photo\":\"https://picsum.photos/seed/71/600\",\"StreetTrendEchoSharingUser_gender\":\"Hello World\",\"StreetTrendEchoSharingUser_datebirth\":\"Hello World\",\"StreetTrendEchoSharingUser_describe\":\"Hello World\",\"StreetTrendEchoSharingUser_balance\":\"0\",\"StreetTrendEchoSharingUser_followings\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_followers\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_blacklist\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_create_time\":\"1758535008513\"}')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode(
        '{\"StreetTrendEchoSharingUser_id\":\"0\",\"StreetTrendEchoSharingUser_email\":\"Hello World\",\"StreetTrendEchoSharingUser_password\":\"Hello World\",\"StreetTrendEchoSharingUser_name\":\"Hello World\",\"StreetTrendEchoSharingUser_photo\":\"https://picsum.photos/seed/393/600\",\"StreetTrendEchoSharingUser_gender\":\"Hello World\",\"StreetTrendEchoSharingUser_datebirth\":\"Hello World\",\"StreetTrendEchoSharingUser_describe\":\"Hello World\",\"StreetTrendEchoSharingUser_balance\":\"0\",\"StreetTrendEchoSharingUser_followings\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_followers\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_blacklist\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_create_time\":\"1758535009400\"}')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode(
        '{\"StreetTrendEchoSharingUser_id\":\"0\",\"StreetTrendEchoSharingUser_email\":\"Hello World\",\"StreetTrendEchoSharingUser_password\":\"Hello World\",\"StreetTrendEchoSharingUser_name\":\"Hello World\",\"StreetTrendEchoSharingUser_photo\":\"https://picsum.photos/seed/757/600\",\"StreetTrendEchoSharingUser_gender\":\"Hello World\",\"StreetTrendEchoSharingUser_datebirth\":\"Hello World\",\"StreetTrendEchoSharingUser_describe\":\"Hello World\",\"StreetTrendEchoSharingUser_balance\":\"0\",\"StreetTrendEchoSharingUser_followings\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_followers\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_blacklist\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_create_time\":\"1758535010141\"}')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode(
        '{\"StreetTrendEchoSharingUser_id\":\"0\",\"StreetTrendEchoSharingUser_email\":\"Hello World\",\"StreetTrendEchoSharingUser_password\":\"Hello World\",\"StreetTrendEchoSharingUser_name\":\"Hello World\",\"StreetTrendEchoSharingUser_photo\":\"https://picsum.photos/seed/498/600\",\"StreetTrendEchoSharingUser_gender\":\"Hello World\",\"StreetTrendEchoSharingUser_datebirth\":\"Hello World\",\"StreetTrendEchoSharingUser_describe\":\"Hello World\",\"StreetTrendEchoSharingUser_balance\":\"0\",\"StreetTrendEchoSharingUser_followings\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_followers\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_blacklist\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_create_time\":\"1758535010879\"}')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode(
        '{\"StreetTrendEchoSharingUser_id\":\"0\",\"StreetTrendEchoSharingUser_email\":\"Hello World\",\"StreetTrendEchoSharingUser_password\":\"Hello World\",\"StreetTrendEchoSharingUser_name\":\"Hello World\",\"StreetTrendEchoSharingUser_photo\":\"https://picsum.photos/seed/181/600\",\"StreetTrendEchoSharingUser_gender\":\"Hello World\",\"StreetTrendEchoSharingUser_datebirth\":\"Hello World\",\"StreetTrendEchoSharingUser_describe\":\"Hello World\",\"StreetTrendEchoSharingUser_balance\":\"0\",\"StreetTrendEchoSharingUser_followings\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_followers\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_blacklist\":\"[\\\"0\\\"]\",\"StreetTrendEchoSharingUser_create_time\":\"1758535021266\"}'))
  ];
  List<StreetTrendEchoSharingUserStruct> get urbanOutfitTrendSharingUsers =>
      _urbanOutfitTrendSharingUsers;
  set urbanOutfitTrendSharingUsers(
      List<StreetTrendEchoSharingUserStruct> value) {
    _urbanOutfitTrendSharingUsers = value;
    prefs.setStringList('ff_urbanOutfitTrendSharingUsers',
        value.map((x) => x.serialize()).toList());
  }

  void addToUrbanOutfitTrendSharingUsers(
      StreetTrendEchoSharingUserStruct value) {
    urbanOutfitTrendSharingUsers.add(value);
    prefs.setStringList('ff_urbanOutfitTrendSharingUsers',
        _urbanOutfitTrendSharingUsers.map((x) => x.serialize()).toList());
  }

  void removeFromUrbanOutfitTrendSharingUsers(
      StreetTrendEchoSharingUserStruct value) {
    urbanOutfitTrendSharingUsers.remove(value);
    prefs.setStringList('ff_urbanOutfitTrendSharingUsers',
        _urbanOutfitTrendSharingUsers.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUrbanOutfitTrendSharingUsers(int index) {
    urbanOutfitTrendSharingUsers.removeAt(index);
    prefs.setStringList('ff_urbanOutfitTrendSharingUsers',
        _urbanOutfitTrendSharingUsers.map((x) => x.serialize()).toList());
  }

  void updateUrbanOutfitTrendSharingUsersAtIndex(
    int index,
    StreetTrendEchoSharingUserStruct Function(StreetTrendEchoSharingUserStruct)
        updateFn,
  ) {
    urbanOutfitTrendSharingUsers[index] =
        updateFn(_urbanOutfitTrendSharingUsers[index]);
    prefs.setStringList('ff_urbanOutfitTrendSharingUsers',
        _urbanOutfitTrendSharingUsers.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUrbanOutfitTrendSharingUsers(
      int index, StreetTrendEchoSharingUserStruct value) {
    urbanOutfitTrendSharingUsers.insert(index, value);
    prefs.setStringList('ff_urbanOutfitTrendSharingUsers',
        _urbanOutfitTrendSharingUsers.map((x) => x.serialize()).toList());
  }

  int _urbanTrendVisualCollaborationCurrent = 0;
  int get urbanTrendVisualCollaborationCurrent =>
      _urbanTrendVisualCollaborationCurrent;
  set urbanTrendVisualCollaborationCurrent(int value) {
    _urbanTrendVisualCollaborationCurrent = value;
    prefs.setInt('ff_urbanTrendVisualCollaborationCurrent', value);
  }

  List<CrossCultureTrendExchangeHubPostsStruct>
      _sneakerheadCultureConnectPosts = [
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode(
        '{\"CrossCultureTrendExchangeHubPosts_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_photo\":\"[\\\"https://picsum.photos/seed/251/600\\\"]\",\"CrossCultureTrendExchangeHubPosts_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"CrossCultureTrendExchangeHubPosts_describe\":\"Hello World\",\"CrossCultureTrendExchangeHubPosts_like_user\":\"[\\\"0\\\"]\",\"CrossCultureTrendExchangeHubPosts_comments\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_time\":\"1758535152982\"}')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode(
        '{\"CrossCultureTrendExchangeHubPosts_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_photo\":\"[\\\"https://picsum.photos/seed/25/600\\\"]\",\"CrossCultureTrendExchangeHubPosts_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"CrossCultureTrendExchangeHubPosts_describe\":\"Hello World\",\"CrossCultureTrendExchangeHubPosts_like_user\":\"[\\\"0\\\"]\",\"CrossCultureTrendExchangeHubPosts_comments\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_time\":\"1758535159425\"}')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode(
        '{\"CrossCultureTrendExchangeHubPosts_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_photo\":\"[\\\"https://picsum.photos/seed/177/600\\\"]\",\"CrossCultureTrendExchangeHubPosts_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"CrossCultureTrendExchangeHubPosts_describe\":\"Hello World\",\"CrossCultureTrendExchangeHubPosts_like_user\":\"[\\\"0\\\"]\",\"CrossCultureTrendExchangeHubPosts_comments\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_time\":\"1758535160162\"}')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode(
        '{\"CrossCultureTrendExchangeHubPosts_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_photo\":\"[\\\"https://picsum.photos/seed/930/600\\\"]\",\"CrossCultureTrendExchangeHubPosts_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"CrossCultureTrendExchangeHubPosts_describe\":\"Hello World\",\"CrossCultureTrendExchangeHubPosts_like_user\":\"[\\\"0\\\"]\",\"CrossCultureTrendExchangeHubPosts_comments\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_time\":\"1758535160937\"}')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode(
        '{\"CrossCultureTrendExchangeHubPosts_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_photo\":\"[\\\"https://picsum.photos/seed/293/600\\\"]\",\"CrossCultureTrendExchangeHubPosts_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"CrossCultureTrendExchangeHubPosts_describe\":\"Hello World\",\"CrossCultureTrendExchangeHubPosts_like_user\":\"[\\\"0\\\"]\",\"CrossCultureTrendExchangeHubPosts_comments\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_time\":\"1758535163764\"}')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode(
        '{\"CrossCultureTrendExchangeHubPosts_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_id\":\"0\",\"CrossCultureTrendExchangeHubPosts_photo\":\"[\\\"https://picsum.photos/seed/392/600\\\"]\",\"CrossCultureTrendExchangeHubPosts_video\":\"https://assets.mixkit.co/videos/529/529-720.mp4\",\"CrossCultureTrendExchangeHubPosts_describe\":\"Hello World\",\"CrossCultureTrendExchangeHubPosts_like_user\":\"[\\\"0\\\"]\",\"CrossCultureTrendExchangeHubPosts_comments\":\"0\",\"CrossCultureTrendExchangeHubPosts_create_time\":\"1758535164548\"}'))
  ];
  List<CrossCultureTrendExchangeHubPostsStruct>
      get sneakerheadCultureConnectPosts => _sneakerheadCultureConnectPosts;
  set sneakerheadCultureConnectPosts(
      List<CrossCultureTrendExchangeHubPostsStruct> value) {
    _sneakerheadCultureConnectPosts = value;
    prefs.setStringList('ff_sneakerheadCultureConnectPosts',
        value.map((x) => x.serialize()).toList());
  }

  void addToSneakerheadCultureConnectPosts(
      CrossCultureTrendExchangeHubPostsStruct value) {
    sneakerheadCultureConnectPosts.add(value);
    prefs.setStringList('ff_sneakerheadCultureConnectPosts',
        _sneakerheadCultureConnectPosts.map((x) => x.serialize()).toList());
  }

  void removeFromSneakerheadCultureConnectPosts(
      CrossCultureTrendExchangeHubPostsStruct value) {
    sneakerheadCultureConnectPosts.remove(value);
    prefs.setStringList('ff_sneakerheadCultureConnectPosts',
        _sneakerheadCultureConnectPosts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSneakerheadCultureConnectPosts(int index) {
    sneakerheadCultureConnectPosts.removeAt(index);
    prefs.setStringList('ff_sneakerheadCultureConnectPosts',
        _sneakerheadCultureConnectPosts.map((x) => x.serialize()).toList());
  }

  void updateSneakerheadCultureConnectPostsAtIndex(
    int index,
    CrossCultureTrendExchangeHubPostsStruct Function(
            CrossCultureTrendExchangeHubPostsStruct)
        updateFn,
  ) {
    sneakerheadCultureConnectPosts[index] =
        updateFn(_sneakerheadCultureConnectPosts[index]);
    prefs.setStringList('ff_sneakerheadCultureConnectPosts',
        _sneakerheadCultureConnectPosts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSneakerheadCultureConnectPosts(
      int index, CrossCultureTrendExchangeHubPostsStruct value) {
    sneakerheadCultureConnectPosts.insert(index, value);
    prefs.setStringList('ff_sneakerheadCultureConnectPosts',
        _sneakerheadCultureConnectPosts.map((x) => x.serialize()).toList());
  }

  List<FutureLifestyleSharingPostImageStruct>
      _creativeWardrobeFusionCommunPostImages = [
    FutureLifestyleSharingPostImageStruct.fromSerializableMap(jsonDecode(
        '{\"FutureLifestyleSharingPostImage_id\":\"0\",\"FutureLifestyleSharingPostImage_photo\":\"[\\\"https://picsum.photos/seed/505/600\\\"]\",\"FutureLifestyleSharingPostImage_describe\":\"Hello World\",\"FutureLifestyleSharingPostImage_like_users\":\"[\\\"0\\\"]\",\"FutureLifestyleSharingPostImage_comment\":\"0\",\"FutureLifestyleSharingPostImage_create_id\":\"0\",\"FutureLifestyleSharingPostImage_create_time\":\"1758535267006\"}')),
    FutureLifestyleSharingPostImageStruct.fromSerializableMap(jsonDecode(
        '{\"FutureLifestyleSharingPostImage_id\":\"0\",\"FutureLifestyleSharingPostImage_photo\":\"[\\\"https://picsum.photos/seed/161/600\\\"]\",\"FutureLifestyleSharingPostImage_describe\":\"Hello World\",\"FutureLifestyleSharingPostImage_like_users\":\"[\\\"0\\\"]\",\"FutureLifestyleSharingPostImage_comment\":\"0\",\"FutureLifestyleSharingPostImage_create_id\":\"0\",\"FutureLifestyleSharingPostImage_create_time\":\"1758535268221\"}')),
    FutureLifestyleSharingPostImageStruct.fromSerializableMap(jsonDecode(
        '{\"FutureLifestyleSharingPostImage_id\":\"0\",\"FutureLifestyleSharingPostImage_photo\":\"[\\\"https://picsum.photos/seed/249/600\\\"]\",\"FutureLifestyleSharingPostImage_describe\":\"Hello World\",\"FutureLifestyleSharingPostImage_like_users\":\"[\\\"0\\\"]\",\"FutureLifestyleSharingPostImage_comment\":\"0\",\"FutureLifestyleSharingPostImage_create_id\":\"0\",\"FutureLifestyleSharingPostImage_create_time\":\"1758535269034\"}')),
    FutureLifestyleSharingPostImageStruct.fromSerializableMap(jsonDecode(
        '{\"FutureLifestyleSharingPostImage_id\":\"0\",\"FutureLifestyleSharingPostImage_photo\":\"[\\\"https://picsum.photos/seed/505/600\\\"]\",\"FutureLifestyleSharingPostImage_describe\":\"Hello World\",\"FutureLifestyleSharingPostImage_like_users\":\"[\\\"0\\\"]\",\"FutureLifestyleSharingPostImage_comment\":\"0\",\"FutureLifestyleSharingPostImage_create_id\":\"0\",\"FutureLifestyleSharingPostImage_create_time\":\"1758535270300\"}'))
  ];
  List<FutureLifestyleSharingPostImageStruct>
      get creativeWardrobeFusionCommunPostImages =>
          _creativeWardrobeFusionCommunPostImages;
  set creativeWardrobeFusionCommunPostImages(
      List<FutureLifestyleSharingPostImageStruct> value) {
    _creativeWardrobeFusionCommunPostImages = value;
    prefs.setStringList('ff_creativeWardrobeFusionCommunPostImages',
        value.map((x) => x.serialize()).toList());
  }

  void addToCreativeWardrobeFusionCommunPostImages(
      FutureLifestyleSharingPostImageStruct value) {
    creativeWardrobeFusionCommunPostImages.add(value);
    prefs.setStringList(
        'ff_creativeWardrobeFusionCommunPostImages',
        _creativeWardrobeFusionCommunPostImages
            .map((x) => x.serialize())
            .toList());
  }

  void removeFromCreativeWardrobeFusionCommunPostImages(
      FutureLifestyleSharingPostImageStruct value) {
    creativeWardrobeFusionCommunPostImages.remove(value);
    prefs.setStringList(
        'ff_creativeWardrobeFusionCommunPostImages',
        _creativeWardrobeFusionCommunPostImages
            .map((x) => x.serialize())
            .toList());
  }

  void removeAtIndexFromCreativeWardrobeFusionCommunPostImages(int index) {
    creativeWardrobeFusionCommunPostImages.removeAt(index);
    prefs.setStringList(
        'ff_creativeWardrobeFusionCommunPostImages',
        _creativeWardrobeFusionCommunPostImages
            .map((x) => x.serialize())
            .toList());
  }

  void updateCreativeWardrobeFusionCommunPostImagesAtIndex(
    int index,
    FutureLifestyleSharingPostImageStruct Function(
            FutureLifestyleSharingPostImageStruct)
        updateFn,
  ) {
    creativeWardrobeFusionCommunPostImages[index] =
        updateFn(_creativeWardrobeFusionCommunPostImages[index]);
    prefs.setStringList(
        'ff_creativeWardrobeFusionCommunPostImages',
        _creativeWardrobeFusionCommunPostImages
            .map((x) => x.serialize())
            .toList());
  }

  void insertAtIndexInCreativeWardrobeFusionCommunPostImages(
      int index, FutureLifestyleSharingPostImageStruct value) {
    creativeWardrobeFusionCommunPostImages.insert(index, value);
    prefs.setStringList(
        'ff_creativeWardrobeFusionCommunPostImages',
        _creativeWardrobeFusionCommunPostImages
            .map((x) => x.serialize())
            .toList());
  }

  List<WorldFashionSharingCollectiveTrendsStruct>
      _trendDrivenStyleCollaborationTrends = [
    WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap(jsonDecode(
        '{\"WorldFashionSharingCollectiveTrends_id\":\"0\",\"WorldFashionSharingCollectiveTrends_title\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_smatilte\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_star\":\"0\",\"WorldFashionSharingCollectiveTrends_photo\":\"https://picsum.photos/seed/23/600\",\"WorldFashionSharingCollectiveTrends_describe\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_unlock\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_like_users\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_comment\":\"0\",\"WorldFashionSharingCollectiveTrends_joinusers\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_createid\":\"0\"}')),
    WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap(jsonDecode(
        '{\"WorldFashionSharingCollectiveTrends_id\":\"0\",\"WorldFashionSharingCollectiveTrends_title\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_smatilte\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_star\":\"0\",\"WorldFashionSharingCollectiveTrends_photo\":\"https://picsum.photos/seed/123/600\",\"WorldFashionSharingCollectiveTrends_describe\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_unlock\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_like_users\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_comment\":\"0\",\"WorldFashionSharingCollectiveTrends_joinusers\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_createid\":\"0\"}')),
    WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap(jsonDecode(
        '{\"WorldFashionSharingCollectiveTrends_id\":\"0\",\"WorldFashionSharingCollectiveTrends_title\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_smatilte\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_star\":\"0\",\"WorldFashionSharingCollectiveTrends_photo\":\"https://picsum.photos/seed/359/600\",\"WorldFashionSharingCollectiveTrends_describe\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_unlock\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_like_users\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_comment\":\"0\",\"WorldFashionSharingCollectiveTrends_joinusers\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_createid\":\"0\"}')),
    WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap(jsonDecode(
        '{\"WorldFashionSharingCollectiveTrends_id\":\"0\",\"WorldFashionSharingCollectiveTrends_title\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_smatilte\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_star\":\"0\",\"WorldFashionSharingCollectiveTrends_photo\":\"https://picsum.photos/seed/322/600\",\"WorldFashionSharingCollectiveTrends_describe\":\"Hello World\",\"WorldFashionSharingCollectiveTrends_unlock\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_like_users\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_comment\":\"0\",\"WorldFashionSharingCollectiveTrends_joinusers\":\"[\\\"0\\\"]\",\"WorldFashionSharingCollectiveTrends_createid\":\"0\"}'))
  ];
  List<WorldFashionSharingCollectiveTrendsStruct>
      get trendDrivenStyleCollaborationTrends =>
          _trendDrivenStyleCollaborationTrends;
  set trendDrivenStyleCollaborationTrends(
      List<WorldFashionSharingCollectiveTrendsStruct> value) {
    _trendDrivenStyleCollaborationTrends = value;
    prefs.setStringList('ff_trendDrivenStyleCollaborationTrends',
        value.map((x) => x.serialize()).toList());
  }

  void addToTrendDrivenStyleCollaborationTrends(
      WorldFashionSharingCollectiveTrendsStruct value) {
    trendDrivenStyleCollaborationTrends.add(value);
    prefs.setStringList(
        'ff_trendDrivenStyleCollaborationTrends',
        _trendDrivenStyleCollaborationTrends
            .map((x) => x.serialize())
            .toList());
  }

  void removeFromTrendDrivenStyleCollaborationTrends(
      WorldFashionSharingCollectiveTrendsStruct value) {
    trendDrivenStyleCollaborationTrends.remove(value);
    prefs.setStringList(
        'ff_trendDrivenStyleCollaborationTrends',
        _trendDrivenStyleCollaborationTrends
            .map((x) => x.serialize())
            .toList());
  }

  void removeAtIndexFromTrendDrivenStyleCollaborationTrends(int index) {
    trendDrivenStyleCollaborationTrends.removeAt(index);
    prefs.setStringList(
        'ff_trendDrivenStyleCollaborationTrends',
        _trendDrivenStyleCollaborationTrends
            .map((x) => x.serialize())
            .toList());
  }

  void updateTrendDrivenStyleCollaborationTrendsAtIndex(
    int index,
    WorldFashionSharingCollectiveTrendsStruct Function(
            WorldFashionSharingCollectiveTrendsStruct)
        updateFn,
  ) {
    trendDrivenStyleCollaborationTrends[index] =
        updateFn(_trendDrivenStyleCollaborationTrends[index]);
    prefs.setStringList(
        'ff_trendDrivenStyleCollaborationTrends',
        _trendDrivenStyleCollaborationTrends
            .map((x) => x.serialize())
            .toList());
  }

  void insertAtIndexInTrendDrivenStyleCollaborationTrends(
      int index, WorldFashionSharingCollectiveTrendsStruct value) {
    trendDrivenStyleCollaborationTrends.insert(index, value);
    prefs.setStringList(
        'ff_trendDrivenStyleCollaborationTrends',
        _trendDrivenStyleCollaborationTrends
            .map((x) => x.serialize())
            .toList());
  }

  List<CreativeTrendBeatCollCommentsStruct> _modernFashionInfluenceComments =
      [];
  List<CreativeTrendBeatCollCommentsStruct>
      get modernFashionInfluenceComments => _modernFashionInfluenceComments;
  set modernFashionInfluenceComments(
      List<CreativeTrendBeatCollCommentsStruct> value) {
    _modernFashionInfluenceComments = value;
    prefs.setStringList('ff_modernFashionInfluenceComments',
        value.map((x) => x.serialize()).toList());
  }

  void addToModernFashionInfluenceComments(
      CreativeTrendBeatCollCommentsStruct value) {
    modernFashionInfluenceComments.add(value);
    prefs.setStringList('ff_modernFashionInfluenceComments',
        _modernFashionInfluenceComments.map((x) => x.serialize()).toList());
  }

  void removeFromModernFashionInfluenceComments(
      CreativeTrendBeatCollCommentsStruct value) {
    modernFashionInfluenceComments.remove(value);
    prefs.setStringList('ff_modernFashionInfluenceComments',
        _modernFashionInfluenceComments.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromModernFashionInfluenceComments(int index) {
    modernFashionInfluenceComments.removeAt(index);
    prefs.setStringList('ff_modernFashionInfluenceComments',
        _modernFashionInfluenceComments.map((x) => x.serialize()).toList());
  }

  void updateModernFashionInfluenceCommentsAtIndex(
    int index,
    CreativeTrendBeatCollCommentsStruct Function(
            CreativeTrendBeatCollCommentsStruct)
        updateFn,
  ) {
    modernFashionInfluenceComments[index] =
        updateFn(_modernFashionInfluenceComments[index]);
    prefs.setStringList('ff_modernFashionInfluenceComments',
        _modernFashionInfluenceComments.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInModernFashionInfluenceComments(
      int index, CreativeTrendBeatCollCommentsStruct value) {
    modernFashionInfluenceComments.insert(index, value);
    prefs.setStringList('ff_modernFashionInfluenceComments',
        _modernFashionInfluenceComments.map((x) => x.serialize()).toList());
  }

  List<NextGenStreetwearShowcaseChatStruct>
      _streetCultureExpressionNetworkChats = [
    NextGenStreetwearShowcaseChatStruct.fromSerializableMap(jsonDecode(
        '{\"NextGenStreetwearShowcaseChat_id\":\"0\",\"NextGenStreetwearShowcaseChat_last_msg\":\"Hello!\",\"NextGenStreetwearShowcaseChat_last_time\":\"1758535502072\",\"NextGenStreetwearShowcaseChat_other_id\":\"1\",\"NextGenStreetwearShowcaseChat_current_id\":\"0\"}'))
  ];
  List<NextGenStreetwearShowcaseChatStruct>
      get streetCultureExpressionNetworkChats =>
          _streetCultureExpressionNetworkChats;
  set streetCultureExpressionNetworkChats(
      List<NextGenStreetwearShowcaseChatStruct> value) {
    _streetCultureExpressionNetworkChats = value;
    prefs.setStringList('ff_streetCultureExpressionNetworkChats',
        value.map((x) => x.serialize()).toList());
  }

  void addToStreetCultureExpressionNetworkChats(
      NextGenStreetwearShowcaseChatStruct value) {
    streetCultureExpressionNetworkChats.add(value);
    prefs.setStringList(
        'ff_streetCultureExpressionNetworkChats',
        _streetCultureExpressionNetworkChats
            .map((x) => x.serialize())
            .toList());
  }

  void removeFromStreetCultureExpressionNetworkChats(
      NextGenStreetwearShowcaseChatStruct value) {
    streetCultureExpressionNetworkChats.remove(value);
    prefs.setStringList(
        'ff_streetCultureExpressionNetworkChats',
        _streetCultureExpressionNetworkChats
            .map((x) => x.serialize())
            .toList());
  }

  void removeAtIndexFromStreetCultureExpressionNetworkChats(int index) {
    streetCultureExpressionNetworkChats.removeAt(index);
    prefs.setStringList(
        'ff_streetCultureExpressionNetworkChats',
        _streetCultureExpressionNetworkChats
            .map((x) => x.serialize())
            .toList());
  }

  void updateStreetCultureExpressionNetworkChatsAtIndex(
    int index,
    NextGenStreetwearShowcaseChatStruct Function(
            NextGenStreetwearShowcaseChatStruct)
        updateFn,
  ) {
    streetCultureExpressionNetworkChats[index] =
        updateFn(_streetCultureExpressionNetworkChats[index]);
    prefs.setStringList(
        'ff_streetCultureExpressionNetworkChats',
        _streetCultureExpressionNetworkChats
            .map((x) => x.serialize())
            .toList());
  }

  void insertAtIndexInStreetCultureExpressionNetworkChats(
      int index, NextGenStreetwearShowcaseChatStruct value) {
    streetCultureExpressionNetworkChats.insert(index, value);
    prefs.setStringList(
        'ff_streetCultureExpressionNetworkChats',
        _streetCultureExpressionNetworkChats
            .map((x) => x.serialize())
            .toList());
  }

  List<GlobalHypeFashionExchangeMessageStruct>
      _aestheticStyleInspirationMessages = [
    GlobalHypeFashionExchangeMessageStruct.fromSerializableMap(jsonDecode(
        '{\"GlobalHypeFashionExchangeMessage_content\":\"Hello!\",\"GlobalHypeFashionExchangeMessage_create_id\":\"1\",\"GlobalHypeFashionExchangeMessage_chatref\":\"0\"}'))
  ];
  List<GlobalHypeFashionExchangeMessageStruct>
      get aestheticStyleInspirationMessages =>
          _aestheticStyleInspirationMessages;
  set aestheticStyleInspirationMessages(
      List<GlobalHypeFashionExchangeMessageStruct> value) {
    _aestheticStyleInspirationMessages = value;
    prefs.setStringList('ff_aestheticStyleInspirationMessages',
        value.map((x) => x.serialize()).toList());
  }

  void addToAestheticStyleInspirationMessages(
      GlobalHypeFashionExchangeMessageStruct value) {
    aestheticStyleInspirationMessages.add(value);
    prefs.setStringList('ff_aestheticStyleInspirationMessages',
        _aestheticStyleInspirationMessages.map((x) => x.serialize()).toList());
  }

  void removeFromAestheticStyleInspirationMessages(
      GlobalHypeFashionExchangeMessageStruct value) {
    aestheticStyleInspirationMessages.remove(value);
    prefs.setStringList('ff_aestheticStyleInspirationMessages',
        _aestheticStyleInspirationMessages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAestheticStyleInspirationMessages(int index) {
    aestheticStyleInspirationMessages.removeAt(index);
    prefs.setStringList('ff_aestheticStyleInspirationMessages',
        _aestheticStyleInspirationMessages.map((x) => x.serialize()).toList());
  }

  void updateAestheticStyleInspirationMessagesAtIndex(
    int index,
    GlobalHypeFashionExchangeMessageStruct Function(
            GlobalHypeFashionExchangeMessageStruct)
        updateFn,
  ) {
    aestheticStyleInspirationMessages[index] =
        updateFn(_aestheticStyleInspirationMessages[index]);
    prefs.setStringList('ff_aestheticStyleInspirationMessages',
        _aestheticStyleInspirationMessages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAestheticStyleInspirationMessages(
      int index, GlobalHypeFashionExchangeMessageStruct value) {
    aestheticStyleInspirationMessages.insert(index, value);
    prefs.setStringList('ff_aestheticStyleInspirationMessages',
        _aestheticStyleInspirationMessages.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
