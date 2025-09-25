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
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode('''
      {
        "StreetTrendEchoSharingUser_id": "0",
        "StreetTrendEchoSharingUser_email": "marine@gmail.com",
        "StreetTrendEchoSharingUser_password": "12345678",
        "StreetTrendEchoSharingUser_name": "Thorne",
        "StreetTrendEchoSharingUser_photo": "assets/images/dafyguidfgiydyf_xcuvigsdfyugiAIUSFG.png",
        "StreetTrendEchoSharingUser_gender": "Male",
        "StreetTrendEchoSharingUser_datebirth": "28",
        "StreetTrendEchoSharingUser_describe": "Hiding sunsets in ocean waves, writing starry skies in code—half free, half fiery.",
        "StreetTrendEchoSharingUser_balance": "0",
        "StreetTrendEchoSharingUser_followings": "[\\\"1\\\"]",
        "StreetTrendEchoSharingUser_followers": "[\\\"2\\\"]",
        "StreetTrendEchoSharingUser_blacklist": "[]",
        "StreetTrendEchoSharingUser_create_time": "1758535007833"
      }
    ''')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode('''
      {
        "StreetTrendEchoSharingUser_id": "1",
        "StreetTrendEchoSharingUser_email": "techhub@outlook.com",
        "StreetTrendEchoSharingUser_password": "dfsdfasdgfsdg",
        "StreetTrendEchoSharingUser_name": "Maren",
        "StreetTrendEchoSharingUser_photo": "assets/images/yugafyudgfdfugio_cxbvyhusdgifyuASDU.png",
        "StreetTrendEchoSharingUser_gender": "Female",
        "StreetTrendEchoSharingUser_datebirth": "27",
        "StreetTrendEchoSharingUser_describe": "No chasing right in definitions, just being cool in instincts—my rhythm, my own melody.",
        "StreetTrendEchoSharingUser_balance": "0",
        "StreetTrendEchoSharingUser_followings": "[\\\"0\\\"]",
        "StreetTrendEchoSharingUser_followers": "[]",
        "StreetTrendEchoSharingUser_blacklist": "[]",
        "StreetTrendEchoSharingUser_create_time": "1758535008513"
      }
    ''')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode('''
      {
        "StreetTrendEchoSharingUser_id": "2",
        "StreetTrendEchoSharingUser_email": "elowen.art@icloud.com",
        "StreetTrendEchoSharingUser_password": "1234561516",
        "StreetTrendEchoSharingUser_name": "Thea",
        "StreetTrendEchoSharingUser_photo": "assets/images/gfdshugfdhuiohg_xcvghsyudfgiaudfg.png",
        "StreetTrendEchoSharingUser_gender": "Female",
        "StreetTrendEchoSharingUser_datebirth": "26",
        "StreetTrendEchoSharingUser_describe": "Catching wind’s shape with a lens, wrapping emotion’s warmth in words—record seriously, live slowly.",
        "StreetTrendEchoSharingUser_balance": "0",
        "StreetTrendEchoSharingUser_followings": "[\\\"1\\\"]",
        "StreetTrendEchoSharingUser_followers": "[]",
        "StreetTrendEchoSharingUser_blacklist": "[]",
        "StreetTrendEchoSharingUser_create_time": "1758535009400"
      }
    ''')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode('''
      {
        "StreetTrendEchoSharingUser_id": "3",
        "StreetTrendEchoSharingUser_email": "silas.flow@yahoo.com",
        "StreetTrendEchoSharingUser_password": "1234561516",
        "StreetTrendEchoSharingUser_name": "Soren",
        "StreetTrendEchoSharingUser_photo": "assets/images/dfhgudiofhG_xcjbvyuuidfaghudfh.png",
        "StreetTrendEchoSharingUser_gender": "Female",
        "StreetTrendEchoSharingUser_datebirth": "30",
        "StreetTrendEchoSharingUser_describe": "Breaking impossible into try a little today, turning want to do into doing now—small steps still reach far.",
        "StreetTrendEchoSharingUser_balance": "0",
        "StreetTrendEchoSharingUser_followings": "[]",
        "StreetTrendEchoSharingUser_followers": "[]",
        "StreetTrendEchoSharingUser_blacklist": "[]",
        "StreetTrendEchoSharingUser_create_time": "1758535010141"
      }
    ''')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode('''
      {
        "StreetTrendEchoSharingUser_id": "4",
        "StreetTrendEchoSharingUser_email": "thorne.vibe@outlook.com",
        "StreetTrendEchoSharingUser_password": "1234561516",
        "StreetTrendEchoSharingUser_name": "Lila",
        "StreetTrendEchoSharingUser_photo": "assets/images/dfguiodjgiujdoip_iosdfgugfjgi.png",
        "StreetTrendEchoSharingUser_gender": "Female",
        "StreetTrendEchoSharingUser_datebirth": "24",
        "StreetTrendEchoSharingUser_describe": "Loving the texture of old vinyl, craving the edge of new tech—classic and trendy, I want both.",
        "StreetTrendEchoSharingUser_balance": "0",
        "StreetTrendEchoSharingUser_followings": "[]",
        "StreetTrendEchoSharingUser_followers": "[]",
        "StreetTrendEchoSharingUser_blacklist": "[]",
        "StreetTrendEchoSharingUser_create_time": "1758535010879"
      }
    ''')),
    StreetTrendEchoSharingUserStruct.fromSerializableMap(jsonDecode('''
      {
        "StreetTrendEchoSharingUser_id": "5",
        "StreetTrendEchoSharingUser_email": "thea.note@gmail.com",
        "StreetTrendEchoSharingUser_password": "1234561516",
        "StreetTrendEchoSharingUser_name": "Owen",
        "StreetTrendEchoSharingUser_photo": "assets/images/dgsiugduifgo_jgvyusagdyuiagdfg.png",
        "StreetTrendEchoSharingUser_gender": "Male",
        "StreetTrendEchoSharingUser_datebirth": "25",
        "StreetTrendEchoSharingUser_describe": "Not a standard answer, but a 'unique option'—my life, with its own filter.",
        "StreetTrendEchoSharingUser_balance": "0",
        "StreetTrendEchoSharingUser_followings": "[]",
        "StreetTrendEchoSharingUser_followers": "[]",
        "StreetTrendEchoSharingUser_blacklist": "[]",
        "StreetTrendEchoSharingUser_create_time": "1758535021266"
      }
    '''))
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

  int _urbanTrendVisualCollaborationCurrent = 0;
  int get urbanTrendVisualCollaborationCurrent =>
      _urbanTrendVisualCollaborationCurrent;
  set urbanTrendVisualCollaborationCurrent(int value) {
    _urbanTrendVisualCollaborationCurrent = value;
    prefs.setInt('ff_urbanTrendVisualCollaborationCurrent', value);
  }

  List<CrossCultureTrendExchangeHubPostsStruct>
      _sneakerheadCultureConnectPosts = [
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode('''
      {
        "CrossCultureTrendExchangeHubPosts_id": "0",
        "CrossCultureTrendExchangeHubPosts_create_id": "5",
        "CrossCultureTrendExchangeHubPosts_photo": "[\\\"assets/images/dfgdfuuihosidhfguIOD_xcjvbsdgfhuyaishgui.jpeg\\\",\\\"assets/images/fdgudfjguia_sdufasuiof.jpeg\\\"]",
        "CrossCultureTrendExchangeHubPosts_video": "",
        "CrossCultureTrendExchangeHubPosts_describe": "Morning win: Café latte + sun through windows. What’s your tiny happy moment today? ☕️",
        "CrossCultureTrendExchangeHubPosts_like_user": "[]",
        "CrossCultureTrendExchangeHubPosts_comments": "0",
        "CrossCultureTrendExchangeHubPosts_create_time": "1758535152982"
      }
    ''')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode('''
      {
        "CrossCultureTrendExchangeHubPosts_id": "1",
        "CrossCultureTrendExchangeHubPosts_create_id": "4",
        "CrossCultureTrendExchangeHubPosts_photo": "[\\\"assets/images/dfsughdsuifgo_ibfguyidfguiod.jpeg\\\",\\\"assets/images/sudfusidfhos_cvbuyisogfyaiuSFDSUHIO.jpeg\\\"]",
        "CrossCultureTrendExchangeHubPosts_video": "",
        "CrossCultureTrendExchangeHubPosts_describe": "Thrifted denim jacket alert, fits like a dream. Who’s thrifting this weekend? 👖",
        "CrossCultureTrendExchangeHubPosts_like_user": "[]",
        "CrossCultureTrendExchangeHubPosts_comments": "0",
        "CrossCultureTrendExchangeHubPosts_create_time": "1758535159425"
      }
    ''')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode('''
      {
        "CrossCultureTrendExchangeHubPosts_id": "2",
        "CrossCultureTrendExchangeHubPosts_create_id": "3",
        "CrossCultureTrendExchangeHubPosts_photo": "[\\\"assets/images/dfgdufgsdoufig_xcivbyusadgafaiyuysuygaidFY.jpeg\\\",\\\"assets/images/dfguadfgudofg_vcbidfugihduiofgf.jpeg\\\"]",
        "CrossCultureTrendExchangeHubPosts_video": "",
        "CrossCultureTrendExchangeHubPosts_describe": "Saturday clay class = messy hands + a lopsided (but cute!) mug. New hobby unlocked! 🧱",
        "CrossCultureTrendExchangeHubPosts_like_user": "[]",
        "CrossCultureTrendExchangeHubPosts_comments": "0",
        "CrossCultureTrendExchangeHubPosts_create_time": "1758535160162"
      }
    ''')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode('''
      {
        "CrossCultureTrendExchangeHubPosts_id": "3",
        "CrossCultureTrendExchangeHubPosts_create_id": "2",
        "CrossCultureTrendExchangeHubPosts_photo": "[]",
        "CrossCultureTrendExchangeHubPosts_video": "assets/videos/agsyduifGHASDHFUIASO_xcvbsdgfyusadfuso.mp4",
        "CrossCultureTrendExchangeHubPosts_describe": "30-minute evening walks > 24/7 hustling. Rest = superpower, right? 🌿",
        "CrossCultureTrendExchangeHubPosts_like_user": "[]",
        "CrossCultureTrendExchangeHubPosts_comments": "0",
        "CrossCultureTrendExchangeHubPosts_create_time": "1758535160937"
      }
    ''')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode('''
      {
        "CrossCultureTrendExchangeHubPosts_id": "4",
        "CrossCultureTrendExchangeHubPosts_create_id": "1",
        "CrossCultureTrendExchangeHubPosts_photo": "[]",
        "CrossCultureTrendExchangeHubPosts_video": "assets/videos/dfgusdouiohsdufgO_xcihudfhguiodfgou.mp4",
        "CrossCultureTrendExchangeHubPosts_describe": "Coastal hike sunset = sky on fire. Nature, you outdid yourself. 🌅",
        "CrossCultureTrendExchangeHubPosts_like_user": "[]",
        "CrossCultureTrendExchangeHubPosts_comments": "0",
        "CrossCultureTrendExchangeHubPosts_create_time": "1758535163764"
      }
    ''')),
    CrossCultureTrendExchangeHubPostsStruct.fromSerializableMap(jsonDecode('''
      {
        "CrossCultureTrendExchangeHubPosts_id": "5",
        "CrossCultureTrendExchangeHubPosts_create_id": "0",
        "CrossCultureTrendExchangeHubPosts_photo": "[]",
        "CrossCultureTrendExchangeHubPosts_video": "assets/videos/dhfugodhfiug_xcvsgdfhusidhfoui.mp4",
        "CrossCultureTrendExchangeHubPosts_describe": "Game night recap: Pizza, laughs, and my team losing (oops). Best night ever! 🎮",
        "CrossCultureTrendExchangeHubPosts_like_user": "[]",
        "CrossCultureTrendExchangeHubPosts_comments": "0",
        "CrossCultureTrendExchangeHubPosts_create_time": "1758535164548"
      }
    '''))
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
    FutureLifestyleSharingPostImageStruct.fromSerializableMap(jsonDecode('''
      {
        "FutureLifestyleSharingPostImage_id": "0",
        "FutureLifestyleSharingPostImage_photo": "[\\\"assets/images/adgudfouiuuodi_cxbvysgdyfuiasudioFOG.jpeg\\\",\\\"assets/images/dfgdfuidfguiodf_xcjvgbsayudfgaysiudF.jpeg\\\",\\\"assets/images/dfgdufigoufid_cvxiuoBudfigoDUFG.jpeg\\\",\\\"assets/images/weiuuuaifgdfoIGUIDO_xcvuaidsOFGUOIDF.jpeg\\\"]",
        "FutureLifestyleSharingPostImage_describe": "Life Snippet: Morning Coffee & City Light",
        "FutureLifestyleSharingPostImage_like_users": "[]",
        "FutureLifestyleSharingPostImage_comment": "120",
        "FutureLifestyleSharingPostImage_create_id": "1",
        "FutureLifestyleSharingPostImage_create_time": "1758535267006"
      }
    ''')),
    FutureLifestyleSharingPostImageStruct.fromSerializableMap(jsonDecode('''
      {
        "FutureLifestyleSharingPostImage_id": "1",
        "FutureLifestyleSharingPostImage_photo": "[\\\"assets/images/gsdyufghsdiuyg_udisfuashduifosdf.jpeg\\\",\\\"assets/images/sagfdugjudfhgo_xcuvigsuydfgsdyfu.jpeg\\\",\\\"assets/images/dfhhguhdufiogHDFG_cvbughdfuyIGHASUDIOFG.jpeg\\\",\\\"assets/images/sdfgdfuuiodfuig_dgfyausdgyfsiudgfyu.jpeg\\\"]",
        "FutureLifestyleSharingPostImage_describe": "Trend Share: Thrifted Denim Find",
        "FutureLifestyleSharingPostImage_like_users": "[]",
        "FutureLifestyleSharingPostImage_comment": "150",
        "FutureLifestyleSharingPostImage_create_id": "2",
        "FutureLifestyleSharingPostImage_create_time": "1758535268221"
      }
    ''')),
    FutureLifestyleSharingPostImageStruct.fromSerializableMap(jsonDecode('''
      {
        "FutureLifestyleSharingPostImage_id": "2",
        "FutureLifestyleSharingPostImage_photo": "[\\\"assets/images/sdfhugduiuoduifgo_cgsuydhfuisod.jpeg\\\",\\\"assets/images/fgfdhugisdfohgi_xcvushdiofhiuasdf.jpeg\\\",\\\"assets/images/dsuyifasuidfoiasudf_cvudsiuygfuisdfoiu.jpeg\\\",\\\"assets/images/sdgfyuasgdyfuGASDYIUF_cxvjjgsdyufisgdfuy.jpeg\\\"]",
        "FutureLifestyleSharingPostImage_describe": "Hobby Exploration: Weekend Pottery Class",
        "FutureLifestyleSharingPostImage_like_users": "[]",
        "FutureLifestyleSharingPostImage_comment": "180",
        "FutureLifestyleSharingPostImage_create_id": "3",
        "FutureLifestyleSharingPostImage_create_time": "1758535269034"
      }
    ''')),
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

  List<WorldFashionSharingCollectiveTrendsStruct>
      _trendDrivenStyleCollaborationTrends = [
    WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap(jsonDecode('''
      {
        "WorldFashionSharingCollectiveTrends_id": "0",
        "WorldFashionSharingCollectiveTrends_title": "Fashion Trends",
        "WorldFashionSharingCollectiveTrends_smatilte": "Trending Styles",
        "WorldFashionSharingCollectiveTrends_star": "4.8",
        "WorldFashionSharingCollectiveTrends_photo": "assets/images/fgsdayuadgfyuIDF_byidsagFDUYIFGUIDO.jpeg",
        "WorldFashionSharingCollectiveTrends_describe": "Fashion’s landscape thrives on the dynamic exchange between designers and enthusiasts. The latest streetwear collection keeps leading discussions, lauded for its bold silhouettes and seamless blend of retro and futuristic vibes......",
        "WorldFashionSharingCollectiveTrends_unlock": "[]",
        "WorldFashionSharingCollectiveTrends_like_users": "[]",
        "WorldFashionSharingCollectiveTrends_comment": "180",
        "WorldFashionSharingCollectiveTrends_joinusers": "[\\\"1\\\",\\\"2\\\",\\\"5\\\",\\\"4\\\"]",
        "WorldFashionSharingCollectiveTrends_createid": "3"
      }
    ''')),
    WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap(jsonDecode('''
      {
        "WorldFashionSharingCollectiveTrends_id": "1",
        "WorldFashionSharingCollectiveTrends_title": "Trendy Toys",
        "WorldFashionSharingCollectiveTrends_smatilte": "Buzzworthy Picks",
        "WorldFashionSharingCollectiveTrends_star": "4.7",
        "WorldFashionSharingCollectiveTrends_photo": "assets/images/dfghdufhhguiadfohg_uzcxuivgysudfgisydf.jpeg",
        "WorldFashionSharingCollectiveTrends_describe": "The world of trendy toys is perpetually redefined by passionate dialogues among creators and collectors. The new limited-edition figure keeps captivating attention, celebrated for its exquisite detailing and nostalgic callbacks to classic animations......",
        "WorldFashionSharingCollectiveTrends_unlock": "[]",
        "WorldFashionSharingCollectiveTrends_like_users": "[]",
        "WorldFashionSharingCollectiveTrends_comment": "160",
        "WorldFashionSharingCollectiveTrends_joinusers": "[\\\"0\\\",\\\"2\\\",\\\"3\\\",\\\"4\\\"]",
        "WorldFashionSharingCollectiveTrends_createid": "1"
      }
    ''')),
    WorldFashionSharingCollectiveTrendsStruct.fromSerializableMap(jsonDecode('''
      {
        "WorldFashionSharingCollectiveTrends_id": "2",
        "WorldFashionSharingCollectiveTrends_title": "Street Fashion",
        "WorldFashionSharingCollectiveTrends_smatilte": "Hot Topics",
        "WorldFashionSharingCollectiveTrends_star": "4.6",
        "WorldFashionSharingCollectiveTrends_photo": "assets/images/cvhudsfghoahhfdhughdfo_cxuvisuydfyusdfg.jpeg",
        "WorldFashionSharingCollectiveTrends_describe": "Street fashion’s realm is ceaselessly molded by lively interactions between stylists and fans. The newly-released collaborative apparel line keeps ruling conversations, praised for its unique patterns and homage to subculture aesthetics......",
        "WorldFashionSharingCollectiveTrends_unlock": "[]",
        "WorldFashionSharingCollectiveTrends_like_users": "[]",
        "WorldFashionSharingCollectiveTrends_comment": "200",
        "WorldFashionSharingCollectiveTrends_joinusers": "[\\\"1\\\",\\\"5\\\",\\\"3\\\",\\\"4\\\"]",
        "WorldFashionSharingCollectiveTrends_createid": "2"
      }
    ''')),
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

  List<NextGenStreetwearShowcaseChatStruct>
      _streetCultureExpressionNetworkChats = [
    NextGenStreetwearShowcaseChatStruct.fromSerializableMap(jsonDecode('''
      {
        "NextGenStreetwearShowcaseChat_id": "0",
        "NextGenStreetwearShowcaseChat_last_msg": "Hello!",
        "NextGenStreetwearShowcaseChat_last_time": "1758535502072",
        "NextGenStreetwearShowcaseChat_other_id": "1",
        "NextGenStreetwearShowcaseChat_current_id": "0"
      }
    '''))
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

  List<GlobalHypeFashionExchangeMessageStruct>
      _aestheticStyleInspirationMessages = [
    GlobalHypeFashionExchangeMessageStruct.fromSerializableMap(jsonDecode('''
      {
        "GlobalHypeFashionExchangeMessage_content": "Hello!",
        "GlobalHypeFashionExchangeMessage_create_id": "1",
        "GlobalHypeFashionExchangeMessage_chatref": "0"
      }
    '''))
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
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}
