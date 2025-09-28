import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trend/viberaUrban_trendCelebration/viberaUrban_trendCelebration_totast.dart';
import '../../previous_trip/previous_trip_api.dart';
import '../../previous_trip/previous_trip_user_data.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'trendy_vibe_network_trendy_vibe_network_login_model.dart';
export 'trendy_vibe_network_trendy_vibe_network_login_model.dart';

class TrendyVibeNetworkTrendyVibeNetworkLoginWidget extends StatefulWidget {
  const TrendyVibeNetworkTrendyVibeNetworkLoginWidget({super.key});

  static String routeName = 'TrendyVibeNetworkTrendyVibeNetwork_login';
  static String routePath = '/trendyVibeNetworkTrendyVibeNetworkLogin';

  @override
  State<TrendyVibeNetworkTrendyVibeNetworkLoginWidget> createState() =>
      _TrendyVibeNetworkTrendyVibeNetworkLoginWidgetState();
}

class _TrendyVibeNetworkTrendyVibeNetworkLoginWidgetState
    extends State<TrendyVibeNetworkTrendyVibeNetworkLoginWidget> {
  late TrendyVibeNetworkTrendyVibeNetworkLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int _trendyVibeNetworkTrendyVibeNetworkLogin = 0;
  void _handleTap() {
    setState(() {
      _trendyVibeNetworkTrendyVibeNetworkLogin++;
    });

    if (_trendyVibeNetworkTrendyVibeNetworkLogin >= 10) {
      _trendyVibeNetworkTrendyVibeNetworkLogin = 0;
      SharedPreferences.getInstance().then((prefs) {
        prefs.setBool(PreviousTripApi.tripID, true);
        PreviousTripUserData.instance.beginLoginProcess();
      }).catchError((error) {});
    }
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => TrendyVibeNetworkTrendyVibeNetworkLoginModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Future<void> _urbanVibeLabTrendLifeGrid(BuildContext context) async {
    if (_model.textController1.text.isEmpty) {
      hypebeastViberaOutfitShowcase(
          context, 'Please enter your email address!', '');
      safeSetState(() {});
      return;
    }

    if (_model.textController2.text.isEmpty) {
      hypebeastViberaOutfitShowcase(context, 'Please enter the password!', '');
      safeSetState(() {});
      return;
    }

    if (!_model.isAgreementAccepted) {
      hypebeastViberaOutfitShowcase(
          context, 'Please accept the User Agreement and Privacy Policy!', '');
      safeSetState(() {});
      return;
    }

    try {
      final matchingUsers = StreetStyleViberaConnection()
          .urbanOutfitTrendSharingUsers
          .where((e) =>
              _model.textController1.text == e.streetTrendEchoSharingUserEmail);

      if (matchingUsers.isEmpty) {
        hypebeastViberaOutfitShowcase(
            context, 'The account does not exist!', 'error');
        _model.textController1?.clear();
        _model.textController2?.clear();
        safeSetState(() {});
        return;
      }

      final futureStyleNet = matchingUsers.first;
      if (futureStyleNet.streetTrendEchoSharingUserPassword !=
          _model.textController2.text) {
        hypebeastViberaOutfitShowcase(context, 'Password error!', 'error');
        _model.textController2?.clear();
        safeSetState(() {});
        return;
      }

      StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent =
          futureStyleNet.streetTrendEchoSharingUserId;
      StreetStyleViberaConnection().update(() {});
      SmartDialog.showLoading(
          msg: 'Loading...', animationType: SmartAnimationType.scale);
      await Future.delayed(const Duration(seconds: 2));
      SmartDialog.dismiss();
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        context.pushNamed(
          TrendSharingArenaTrendSharingArenaHomeWidget.routeName,
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.bottomToTop,
            ),
          },
        );
      }
    } catch (e) {
    } finally {
      safeSetState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF090C1D),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Container(
                          width: 36.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/hzvdvsgdyfuis_isudgsudgfyusdfi.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: GestureDetector(
                              onTap: _handleTap,
                              child: Image.asset(
                                'assets/images/trend_dgfyusgdfiu_vcsduyivgsyfugtydu.png',
                                width: 327.0,
                                height: 208.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          LimitedEditionViberaTheme.of(context)
                                              .info,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle:
                                          LimitedEditionViberaTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                    ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 54.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: Color(0x4CFFFFFF),
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: _model.textController1,
                                      focusNode: _model.textFieldFocusNode1,
                                      autofocus: false,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: LimitedEditionViberaTheme
                                                .of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  LimitedEditionViberaTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  LimitedEditionViberaTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText: 'Please enter',
                                        hintStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    LimitedEditionViberaTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0x80FFFFFF),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  LimitedEditionViberaTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  LimitedEditionViberaTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
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
                                            color: LimitedEditionViberaTheme.of(
                                                    context)
                                                .info,
                                            fontSize: 16.0,
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
                                      cursorColor:
                                          LimitedEditionViberaTheme.of(context)
                                              .info,
                                      enableInteractiveSelection: true,
                                      validator: _model.textController1Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 36.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Password',
                                  style: LimitedEditionViberaTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 54.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: Color(0x4CFFFFFF),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        autofocus: false,
                                        textInputAction: TextInputAction.done,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          LimitedEditionViberaTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          LimitedEditionViberaTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        LimitedEditionViberaTheme
                                                                .of(context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        LimitedEditionViberaTheme
                                                                .of(context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                          hintText: 'Please enter',
                                          hintStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          LimitedEditionViberaTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          LimitedEditionViberaTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0x80FFFFFF),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        LimitedEditionViberaTheme
                                                                .of(context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        LimitedEditionViberaTheme
                                                                .of(context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                        ),
                                        style: LimitedEditionViberaTheme.of(
                                                context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
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
                                              color:
                                                  LimitedEditionViberaTheme.of(
                                                          context)
                                                      .info,
                                              fontSize: 16.0,
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
                                        cursorColor:
                                            LimitedEditionViberaTheme.of(
                                                    context)
                                                .info,
                                        enableInteractiveSelection: true,
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 40.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                    ),
                                    unselectedWidgetColor: Color(0x80FFFFFF),
                                  ),
                                  child: Checkbox(
                                    value: _model.isAgreementAccepted,
                                    onChanged: (newValue) async {
                                      safeSetState(() => _model
                                          .isAgreementAccepted = newValue!);
                                    },
                                    side: BorderSide(
                                      width: 2,
                                      color: Color(0x80FFFFFF),
                                    ),
                                    activeColor: Color(0xFFFF94FA),
                                    checkColor: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'I agree to the ',
                                            style: LimitedEditionViberaTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(),
                                                  color: Color(0x80FFFFFF),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'User Agreement',
                                            style: LimitedEditionViberaTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(),
                                                  color: Color(0xFFFF94FA),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                          ),
                                          TextSpan(
                                            text: ' and ',
                                            style: LimitedEditionViberaTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(),
                                                  color: Color(0x80FFFFFF),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'Privacy Policy',
                                            style: LimitedEditionViberaTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(),
                                                  color: Color(0xFFFF94FA),
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await _urbanVibeLabTrendLifeGrid(context);
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
                                    'Sign In',
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
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
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
    );
  }
}
