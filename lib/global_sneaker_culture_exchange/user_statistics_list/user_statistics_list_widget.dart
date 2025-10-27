import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/backend/schema/structs/index.dart';
import '/app_state.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_statistics_list_model.dart';
export 'user_statistics_list_model.dart';

class UserStatisticsListWidget extends StatefulWidget {
  const UserStatisticsListWidget({
    super.key,
    required this.type,
  });

  final String type; // 'posts', 'followers', 'following'

  static String routeName = 'UserStatisticsList';
  static String routePath = '/userStatisticsList';

  @override
  State<UserStatisticsListWidget> createState() =>
      _UserStatisticsListWidgetState();
}

class _UserStatisticsListWidgetState extends State<UserStatisticsListWidget> {
  late UserStatisticsListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserStatisticsListModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  String get _title {
    switch (widget.type) {
      case 'followers':
        return 'Followers';
      case 'following':
        return 'Following';
      case 'posts':
        return 'My Posts';
      default:
        return 'List';
    }
  }

  List<dynamic> get _dataList {
    final currentUser = StreetStyleViberaConnection()
        .urbanOutfitTrendSharingUsers
        .elementAtOrNull(
            StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent);

    if (currentUser == null) return [];

    switch (widget.type) {
      case 'followers':
        // 根据followers ID列表查找用户
        return StreetStyleViberaConnection()
            .urbanOutfitTrendSharingUsers
            .where((user) => currentUser.streetTrendEchoSharingUserFollowers
                .contains(user.streetTrendEchoSharingUserId))
            .toList();
      case 'following':
        // 根据followings ID列表查找用户
        return StreetStyleViberaConnection()
            .urbanOutfitTrendSharingUsers
            .where((user) => currentUser.streetTrendEchoSharingUserFollowings
                .contains(user.streetTrendEchoSharingUserId))
            .toList();
      case 'posts':
        // 查找当前用户发布的帖子
        return StreetStyleViberaConnection()
            .sneakerheadCultureConnectPosts
            .where((post) =>
                post.crossCultureTrendExchangeHubPostsCreateId ==
                currentUser.streetTrendEchoSharingUserId)
            .toList();
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<StreetStyleViberaConnection>();
    final dataList = _dataList;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF17171F),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/dsfguidofgiuodsf_dfighudfghuidsfoghuidu.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Header
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: LimitedEditionViberaTheme.of(context).info,
                            size: 28.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 48.0, 0.0),
                          child: Text(
                            _title,
                            textAlign: TextAlign.center,
                            style: LimitedEditionViberaTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: LimitedEditionViberaTheme.of(
                                            context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      LimitedEditionViberaTheme.of(context).info,
                                  fontSize: 24.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: LimitedEditionViberaTheme.of(
                                          context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // List
                Expanded(
                  child: dataList.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                widget.type == 'posts'
                                    ? Icons.post_add_rounded
                                    : Icons.people_outline_rounded,
                                size: 64.0,
                                color: Color(0x66FFFFFF),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  widget.type == 'posts'
                                      ? 'No posts yet'
                                      : 'No ${widget.type} yet',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0x99FFFFFF),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        fontStyle:
                                            LimitedEditionViberaTheme.of(context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : ListView.builder(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            16.0,
                            0,
                            100.0,
                          ),
                          itemCount: dataList.length,
                          itemBuilder: (context, index) {
                            if (widget.type == 'posts') {
                              final post = dataList[index]
                                  as CrossCultureTrendExchangeHubPostsStruct;
                              return _buildPostItem(post);
                            } else {
                              final user = dataList[index]
                                  as StreetTrendEchoSharingUserStruct;
                              return _buildUserItem(user);
                            }
                          },
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserItem(StreetTrendEchoSharingUserStruct user) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0x1A696EFF), Color(0x1AFF94FA)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(-1.0, -1.0),
            end: AlignmentDirectional(1.0, 1.0),
          ),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Color(0x33FFFFFF),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF696EFF), Color(0xFFFF94FA)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(1.0, 0.0),
                    end: AlignmentDirectional(-1.0, 0),
                  ),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          user.streetTrendEchoSharingUserPhoto,
                        ).image,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.streetTrendEchoSharingUserName,
                        style: LimitedEditionViberaTheme.of(context)
                            .bodyMedium
                            .override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontStyle: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color:
                                  LimitedEditionViberaTheme.of(context).info,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: LimitedEditionViberaTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                      if (user.streetTrendEchoSharingUserDescribe.isNotEmpty)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            user.streetTrendEchoSharingUserDescribe,
                            maxLines: 1,
                            style: LimitedEditionViberaTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: LimitedEditionViberaTheme.of(
                                            context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: LimitedEditionViberaTheme.of(
                                            context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0x99FFFFFF),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: LimitedEditionViberaTheme.of(
                                          context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: LimitedEditionViberaTheme.of(
                                          context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: Color(0x66FFFFFF),
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPostItem(CrossCultureTrendExchangeHubPostsStruct post) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0x1A696EFF), Color(0x1AFF94FA)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(-1.0, -1.0),
            end: AlignmentDirectional(1.0, 1.0),
          ),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: Color(0x33FFFFFF),
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (post.crossCultureTrendExchangeHubPostsPhoto.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.asset(
                  post.crossCultureTrendExchangeHubPostsPhoto.first,
                  width: double.infinity,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.crossCultureTrendExchangeHubPostsDescribe,
                    maxLines: 3,
                    style: LimitedEditionViberaTheme.of(context)
                        .bodyMedium
                        .override(
                          font: GoogleFonts.poppins(
                            fontWeight: LimitedEditionViberaTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: LimitedEditionViberaTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: LimitedEditionViberaTheme.of(context).info,
                          fontSize: 15.0,
                          letterSpacing: 0.0,
                          fontWeight: LimitedEditionViberaTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle: LimitedEditionViberaTheme.of(context)
                              .bodyMedium
                              .fontStyle,
                          lineHeight: 1.5,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.favorite_rounded,
                              color: Color(0xFFFF94FA),
                              size: 18.0,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '${post.crossCultureTrendExchangeHubPostsLikeUser.length}',
                                style: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight:
                                            LimitedEditionViberaTheme.of(context)
                                                .bodyMedium
                                                .fontWeight,
                                        fontStyle:
                                            LimitedEditionViberaTheme.of(context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                      color: Color(0x99FFFFFF),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight:
                                          LimitedEditionViberaTheme.of(context)
                                              .bodyMedium
                                              .fontWeight,
                                      fontStyle:
                                          LimitedEditionViberaTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.chat_bubble_rounded,
                                color: Color(0xFF696EFF),
                                size: 18.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  '${post.crossCultureTrendExchangeHubPostsComments}',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0x99FFFFFF),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight:
                                            LimitedEditionViberaTheme.of(context)
                                                .bodyMedium
                                                .fontWeight,
                                        fontStyle:
                                            LimitedEditionViberaTheme.of(context)
                                                .bodyMedium
                                                .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        if (post.crossCultureTrendExchangeHubPostsCreateTime !=
                            null)
                          Text(
                            dateTimeFormat(
                              "relative",
                              post.crossCultureTrendExchangeHubPostsCreateTime!,
                              locale: 'en',
                            ),
                            style: LimitedEditionViberaTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: LimitedEditionViberaTheme.of(
                                            context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: LimitedEditionViberaTheme.of(
                                            context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0x66FFFFFF),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: LimitedEditionViberaTheme.of(
                                          context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: LimitedEditionViberaTheme.of(
                                          context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

