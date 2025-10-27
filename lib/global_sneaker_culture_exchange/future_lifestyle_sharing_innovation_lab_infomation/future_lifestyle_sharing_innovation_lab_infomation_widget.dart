import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import '../user_statistics_list/user_statistics_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'future_lifestyle_sharing_innovation_lab_infomation_model.dart';
export 'future_lifestyle_sharing_innovation_lab_infomation_model.dart';

// 用于错落出现动画的辅助Widget
class _AnimatedListItem extends StatefulWidget {
  final Widget child;
  final int index;
  
  const _AnimatedListItem({
    required this.child,
    required this.index,
  });
  
  @override
  State<_AnimatedListItem> createState() => _AnimatedListItemState();
}

class _AnimatedListItemState extends State<_AnimatedListItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this,
    );
    
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    
    // 错落延迟
    Future.delayed(Duration(milliseconds: widget.index * 80), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: widget.child,
      ),
    );
  }
}

class FutureLifestyleSharingInnovationLabInfomationWidget
    extends StatefulWidget {
  const FutureLifestyleSharingInnovationLabInfomationWidget({super.key});

  static String routeName = 'FutureLifestyleSharingInnovationLab_infomation';
  static String routePath = '/futureLifestyleSharingInnovationLabInfomation';

  @override
  State<FutureLifestyleSharingInnovationLabInfomationWidget> createState() =>
      _FutureLifestyleSharingInnovationLabInfomationWidgetState();
}

class _FutureLifestyleSharingInnovationLabInfomationWidgetState
    extends State<FutureLifestyleSharingInnovationLabInfomationWidget> {
  late FutureLifestyleSharingInnovationLabInfomationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => FutureLifestyleSharingInnovationLabInfomationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<StreetStyleViberaConnection>();

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
            Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Profile',
                        style: LimitedEditionViberaTheme.of(context)
                            .bodyMedium
                            .override(
                              font: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontStyle: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: LimitedEditionViberaTheme.of(context).info,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: LimitedEditionViberaTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // User Info Card (带动画)
                        _AnimatedListItem(
                          index: 0,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 0.0),
                            child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0x1A696EFF),
                                  Color(0x1AFF94FA)
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(-1.0, -1.0),
                                end: AlignmentDirectional(1.0, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                              border: Border.all(
                                color: Color(0x33FFFFFF),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF696EFF),
                                          Color(0xFFFF94FA)
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(1.0, 0.0),
                                        end: AlignmentDirectional(-1.0, 0),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              StreetStyleViberaConnection()
                                                  .urbanOutfitTrendSharingUsers
                                                  .elementAtOrNull(
                                                      StreetStyleViberaConnection()
                                                          .urbanTrendVisualCollaborationCurrent)!
                                                  .streetTrendEchoSharingUserPhoto,
                                            ).image,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Text(
                                      '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserName}',
                                      style: LimitedEditionViberaTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  LimitedEditionViberaTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color:
                                                LimitedEditionViberaTheme.of(
                                                        context)
                                                    .info,
                                            fontSize: 22.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'ID: ${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserCreateTime?.millisecondsSinceEpoch}',
                                      style: LimitedEditionViberaTheme.of(
                                              context)
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
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
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
                                    ),
                                  ),
                                  // Stats Row
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              UserStatisticsListWidget.routeName,
                                              queryParameters: {
                                                'type': serializeParam(
                                                  'posts',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '${StreetStyleViberaConnection().sneakerheadCultureConnectPosts.where((post) => post.crossCultureTrendExchangeHubPostsCreateId == StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserId).length}',
                                                style:
                                                    LimitedEditionViberaTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: LimitedEditionViberaTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'Posts',
                                                style:
                                                    LimitedEditionViberaTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.poppins(
                                                            fontWeight: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0x99FFFFFF),
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        Container(
                                          width: 1.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x33FFFFFF),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              UserStatisticsListWidget.routeName,
                                              queryParameters: {
                                                'type': serializeParam(
                                                  'followers',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserFollowers.length ?? 0}',
                                                style:
                                                    LimitedEditionViberaTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: LimitedEditionViberaTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'Followers',
                                                style:
                                                    LimitedEditionViberaTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.poppins(
                                                            fontWeight: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0x99FFFFFF),
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                        Container(
                                          width: 1.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x33FFFFFF),
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              UserStatisticsListWidget.routeName,
                                              queryParameters: {
                                                'type': serializeParam(
                                                  'following',
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .rightToLeft,
                                                ),
                                              },
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserFollowings.length ?? 0}',
                                                style:
                                                    LimitedEditionViberaTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.poppins(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color: LimitedEditionViberaTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'Following',
                                                style:
                                                    LimitedEditionViberaTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.poppins(
                                                            fontWeight: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                            fontStyle: LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0x99FFFFFF),
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              LimitedEditionViberaTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ),
                        ),
                        // Menu Grid (带动画)
                        _AnimatedListItem(
                          index: 1,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 0.0),
                            child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          ModernStreetStyleExchangeZoneEditFileWidget
                                              .routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.rightToLeft,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0x26696EFF),
                                              Color(0x26FF94FA)
                                            ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.edit_rounded,
                                              color:
                                                  LimitedEditionViberaTheme.of(context)
                                                      .info,
                                              size: 32.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                'Edit Profile',
                                                style: LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle:
                                                            LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: LimitedEditionViberaTheme
                                                              .of(context)
                                                          .info,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight: FontWeight.w500,
                                                      fontStyle:
                                                          LimitedEditionViberaTheme.of(
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
                                  ),
                                  SizedBox(width: 12.0),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          FashionAestheticsExplorationPlatformBlacklistsWidget
                                              .routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.rightToLeft,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0x26696EFF),
                                              Color(0x26FF94FA)
                                            ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.block_rounded,
                                              color:
                                                  LimitedEditionViberaTheme.of(context)
                                                      .info,
                                              size: 32.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                'Blacklist',
                                                style: LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle:
                                                            LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: LimitedEditionViberaTheme
                                                              .of(context)
                                                          .info,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight: FontWeight.w500,
                                                      fontStyle:
                                                          LimitedEditionViberaTheme.of(
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
                                  ),
                                ],
                              ),
                              SizedBox(height: 12.0),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          CreativeTrendVisualSharingCircleSettingsWidget
                                              .routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.rightToLeft,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0x26696EFF),
                                              Color(0x26FF94FA)
                                            ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.settings_rounded,
                                              color:
                                                  LimitedEditionViberaTheme.of(context)
                                                      .info,
                                              size: 32.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                'Settings',
                                                style: LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle:
                                                            LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: LimitedEditionViberaTheme
                                                              .of(context)
                                                          .info,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight: FontWeight.w500,
                                                      fontStyle:
                                                          LimitedEditionViberaTheme.of(
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
                                  ),
                                  SizedBox(width: 12.0),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          FashionCollaborationSharingArenaMywalletsWidget
                                              .routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.rightToLeft,
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0x26696EFF),
                                              Color(0x26FF94FA)
                                            ],
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
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.account_balance_wallet_rounded,
                                              color:
                                                  LimitedEditionViberaTheme.of(context)
                                                      .info,
                                              size: 32.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                'My Wallet',
                                                style: LimitedEditionViberaTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle:
                                                            LimitedEditionViberaTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color: LimitedEditionViberaTheme
                                                              .of(context)
                                                          .info,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight: FontWeight.w500,
                                                      fontStyle:
                                                          LimitedEditionViberaTheme.of(
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
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ),
                        ),
                        // About Vibera Card (带动画)
                        _AnimatedListItem(
                          index: 2,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 0.0),
                            child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0x1A696EFF),
                                  Color(0x1AFF94FA)
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(1.0, -1.0),
                                end: AlignmentDirectional(-1.0, 1.0),
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: Color(0x33FFFFFF),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Icon(
                                        Icons.info_outline_rounded,
                                        color: Color(0xFFFF94FA),
                                        size: 24.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'About Vibera',
                                          style: LimitedEditionViberaTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      LimitedEditionViberaTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: LimitedEditionViberaTheme
                                                        .of(context)
                                                    .info,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    LimitedEditionViberaTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'Exclusive marketplace for trendy players. Share trendy posts, connect with like-minded people through video chat, and unlock new ways of trendy social interaction.',
                                      style: LimitedEditionViberaTheme.of(
                                              context)
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
                                            color: Color(0xB3FFFFFF),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
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
                                            lineHeight: 1.6,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Text(
                                      'Let every trend lover have a place to put it. ✨',
                                      style: LimitedEditionViberaTheme.of(
                                              context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontStyle: FontStyle.italic,
                                            ),
                                            color: Color(0xFF696EFF),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ),
                        ),
                        // Log out按钮 (带动画)
                        _AnimatedListItem(
                          index: 3,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 32.0, 16.0, 0.0),
                            child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(
                                TrendyVibeNetworkTrendyVibeNetworkLoginWidget
                                    .routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.bottomToTop,
                                  ),
                                },
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFF94FA),
                                    Color(0xFF696EFF)
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(-1.0, 0.34),
                                  end: AlignmentDirectional(1.0, -0.34),
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Log out',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
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
                          ),
                          ),
                        ),
                      ].addToEnd(SizedBox(
                        height: 100,
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
