import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:trend/viberaUrban_trendCelebration/viberaUrban_trendCelebration_totast.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_drop_down.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_form.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'lifestyle_photography_inspiration_wall_upload_file_model.dart';
export 'lifestyle_photography_inspiration_wall_upload_file_model.dart';

class LifestylePhotographyInspirationWallUploadFileWidget
    extends StatefulWidget {
  const LifestylePhotographyInspirationWallUploadFileWidget(
      {super.key,
      required this.streetFashionExperienceCommunityZoneEmail,
      required this.streetFashionExperienceCommunityZonePassword});

  static String routeName = 'LifestylePhotographyInspirationWall_upload_file';
  static String routePath = '/lifestylePhotographyInspirationWallUploadFile';
  final String streetFashionExperienceCommunityZoneEmail;
  final String streetFashionExperienceCommunityZonePassword;
  @override
  State<LifestylePhotographyInspirationWallUploadFileWidget> createState() =>
      _LifestylePhotographyInspirationWallUploadFileWidgetState();
}

class _LifestylePhotographyInspirationWallUploadFileWidgetState
    extends State<LifestylePhotographyInspirationWallUploadFileWidget> {
  late LifestylePhotographyInspirationWallUploadFileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => LifestylePhotographyInspirationWallUploadFileModel());

    _model.urbanTrendsettersViberaPlaza ??= TextEditingController();
    _model.streetViberaCultureCelebrationNest ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
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
        backgroundColor: Color(0xFF17171F),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(49.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Edit Profile',
                          style: LimitedEditionViberaTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontStyle:
                                      LimitedEditionViberaTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                ),
                                color:
                                    LimitedEditionViberaTheme.of(context).info,
                                fontSize: 32.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: LimitedEditionViberaTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Flex(
                        direction: Axis.vertical,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 139.0,
                                height: 139.0,
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
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF17171F),
                                            image: DecorationImage(
                                                image: _model
                                                            .globalStreetwearInspirationCollective !=
                                                        ''
                                                    ? AssetImage(_model
                                                        .globalStreetwearInspirationCollective!)
                                                    : AssetImage(''))),
                                      ),
                                    ),
                                    Center(
                                      child: GestureDetector(
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child:
                                                      ViberaAuthenticStyleMarketMedia(
                                                    allowVideoUpload: false,
                                                    onMediaSelected:
                                                        (String path,
                                                            MediaType type) {
                                                      setState(() {
                                                        _model.globalStreetwearInspirationCollective =
                                                            path;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: Container(
                                          width: 24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                'assets/images/sdfguiydhofuig_cvoudfhgodufg.png',
                                              ).image,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Text(
                              'Profile Photo',
                              style: LimitedEditionViberaTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontStyle:
                                          LimitedEditionViberaTheme.of(context)
                                              .bodyMedium
                                              .fontStyle,
                                    ),
                                    color: LimitedEditionViberaTheme.of(context)
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nickname',
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
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
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
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.urbanTrendsettersViberaPlaza,
                                        focusNode: _model
                                            .streetViberaCultureCelebrationNest,
                                        autofocus: false,
                                        textInputAction: TextInputAction.done,
                                        obscureText: false,
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
                                                    color: Color(0x7FFFFFFF),
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
                                            .viberaThriftStyleCollaboration
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
                                0.0, 16.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gender',
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
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
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
                                      width: 2.0,
                                    ),
                                  ),
                                  child: LimitedEditionViberaDropDown<String>(
                                    controller:
                                        _model.viberaWardrobeLegacyCommunity ??=
                                            FormFieldController<String>(null),
                                    options: ['Male', 'Female'],
                                    onChanged: (val) => safeSetState(() => _model
                                            .streetFashionViberaConnectionSpot =
                                        val),
                                    width: double.infinity,
                                    height: double.infinity,
                                    textStyle: LimitedEditionViberaTheme.of(
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
                                          color: Color(0x80FFFFFF),
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
                                    hintText: 'Please enter',
                                    icon: Icon(
                                      Icons.chevron_right,
                                      color:
                                          LimitedEditionViberaTheme.of(context)
                                              .secondaryText,
                                      size: 24.0,
                                    ),
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 16.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date of Birth',
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
                                        color: LimitedEditionViberaTheme.of(
                                                context)
                                            .info,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
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
                                      width: 2.0,
                                    ),
                                  ),
                                  child: LimitedEditionViberaDropDown<String>(
                                    controller:
                                        _model.sneakerViberaDropDiscoveryHub ??=
                                            FormFieldController<String>(null),
                                    options: List.generate(
                                        18, (index) => '${18 + index} age'),
                                    onChanged: (val) => safeSetState(() =>
                                        _model.trendPassionViberaSharingHall =
                                            val),
                                    width: double.infinity,
                                    height: double.infinity,
                                    maxHeight: 250,
                                    textStyle: LimitedEditionViberaTheme.of(
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
                                          color: Color(0x80FFFFFF),
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
                                    hintText: 'Please enter',
                                    icon: Icon(
                                      Icons.chevron_right,
                                      color:
                                          LimitedEditionViberaTheme.of(context)
                                              .secondaryText,
                                      size: 24.0,
                                    ),
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 16.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 41.0, 0.0, 0.0),
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
                              child: GestureDetector(
                                onTap: () async {
                                  final nickname = _model
                                          .urbanTrendsettersViberaPlaza?.text ??
                                      '';
                                  final gender = _model
                                          .streetFashionViberaConnectionSpot ??
                                      '';
                                  final age =
                                      _model.trendPassionViberaSharingHall ??
                                          '';
                                  final photoPath = _model
                                          .globalStreetwearInspirationCollective ??
                                      '';
                                  final email = widget
                                      .streetFashionExperienceCommunityZoneEmail;
                                  final password = widget
                                      .streetFashionExperienceCommunityZonePassword;

                                  if (nickname.isEmpty) {
                                    hypebeastViberaOutfitShowcase(context,
                                        'Please enter a nickname!', '');

                                    return;
                                  }
                                  if (gender.isEmpty) {
                                    hypebeastViberaOutfitShowcase(
                                        context, 'Please select gender!', '');

                                    return;
                                  }
                                  if (age.isEmpty) {
                                    hypebeastViberaOutfitShowcase(
                                        context, 'Please select age!', '');

                                    return;
                                  }

                                  final users = StreetStyleViberaConnection()
                                      .urbanOutfitTrendSharingUsers;
                                  final newUserId = users.length;

                                  final newUser =
                                      createStreetTrendEchoSharingUserStruct(
                                    streetTrendEchoSharingUserId: newUserId,
                                    streetTrendEchoSharingUserEmail: email,
                                    streetTrendEchoSharingUserPassword:
                                        password,
                                    streetTrendEchoSharingUserName: nickname,
                                    streetTrendEchoSharingUserPhoto: photoPath
                                            .isNotEmpty
                                        ? photoPath
                                        : 'assets/images/sdgyfgsdyui_asdgfiysgfysdug.png',
                                    streetTrendEchoSharingUserGender: gender,
                                    streetTrendEchoSharingUserDatebirth:
                                        age.replaceAll(' age', ''),
                                    streetTrendEchoSharingUserDescribe:
                                        'New user on the trend sharing platform',
                                    streetTrendEchoSharingUserBalance: 0,
                                    streetTrendEchoSharingUserCreateTime:
                                        DateTime.now(),
                                  );
                                  SmartDialog.showLoading(
                                      msg: 'Loading...',
                                      animationType: SmartAnimationType.scale);
                                  StreetStyleViberaConnection().update(() {
                                    StreetStyleViberaConnection()
                                        .addToUrbanOutfitTrendSharingUsers(
                                            newUser);
                                    StreetStyleViberaConnection()
                                            .urbanTrendVisualCollaborationCurrent =
                                        newUserId;
                                  });
                                  SmartDialog.dismiss();
                                  await Future.delayed(
                                      Duration(milliseconds: 1000));

                                  context.goNamed(
                                    'TrendSharingArenaTrendSharingArena_home',
                                  );
                                },
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Done',
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
