import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_sneaker_culture_exchange/youth_culture_style_discovery_lab_notenough/youth_culture_style_discovery_lab_notenough_widget.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'hype_culture_radar_street_vibe_atlas_public_model.dart';
export 'hype_culture_radar_street_vibe_atlas_public_model.dart';

class HypeCultureRadarStreetVibeAtlasPublicWidget extends StatefulWidget {
  const HypeCultureRadarStreetVibeAtlasPublicWidget({super.key});

  static String routeName = 'HypeCultureRadarStreetVibeAtlas_public';
  static String routePath = '/hypeCultureRadarStreetVibeAtlasPublic';

  @override
  State<HypeCultureRadarStreetVibeAtlasPublicWidget> createState() =>
      _HypeCultureRadarStreetVibeAtlasPublicWidgetState();
}

class _HypeCultureRadarStreetVibeAtlasPublicWidgetState
    extends State<HypeCultureRadarStreetVibeAtlasPublicWidget> {
  late HypeCultureRadarStreetVibeAtlasPublicModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => HypeCultureRadarStreetVibeAtlasPublicModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                  padding: EdgeInsetsDirectional.fromSTEB(16, 60, 0, 0),
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
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/hzvdvsgdyfuis_isudgsudgfyusdfi.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 243,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/gsurioghduifog_dfigvvyusiadfgaoiudfgo.png',
                                ).image,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.1, -0.9),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        textInputAction: TextInputAction.done,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          hintText: 'Please enter',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0x80FFFFFF),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        maxLines: 8,
                                        cursorColor:
                                            FlutterFlowTheme.of(context).info,
                                        enableInteractiveSelection: true,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                // 已上传的媒体预览区域
                                if (_model.futureStyleCultureCollaboration !=
                                        null &&
                                    _model.futureStyleCultureCollaboration !=
                                        '')
                                  Container(
                                    width: 116,
                                    height: 116,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Color(0xFF696EFF),
                                        width: 2,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        // 显示已上传媒体的占位符
                                        Center(
                                          child: Icon(
                                            Icons.image,
                                            color: Color(0xFF696EFF),
                                            size: 40,
                                          ),
                                        ),
                                        // 删除按钮
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.1, -1.1),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.futureStyleCultureCollaboration =
                                                  null;
                                              safeSetState(() {});
                                            },
                                            child: Container(
                                              width: 24,
                                              height: 24,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                // 上传按钮（当没有媒体时显示）
                                if (_model.futureStyleCultureCollaboration ==
                                        null ||
                                    _model.futureStyleCultureCollaboration ==
                                        '')
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      // 模拟文件选择逻辑
                                      // 在实际应用中，这里应该调用文件选择器
                                      _model.futureStyleCultureCollaboration =
                                          'uploaded_media_${DateTime.now().millisecondsSinceEpoch}';
                                      safeSetState(() {});

                                      // 显示成功提示
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          backgroundColor: Colors.green,
                                          content: Text(
                                            'Media uploaded successfully!',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          duration: Duration(seconds: 1),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 116,
                                      height: 116,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Color(0x4CFFFFFF),
                                          width: 2,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add_photo_alternate,
                                            color: Color(0x80FFFFFF),
                                            size: 32,
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Upload\nPhoto/Video',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0x80FFFFFF),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 200, 0, 16),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Each Post cost 30',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xCCFFFFFF),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: Image.asset(
                                        'assets/images/gudhfgudsiofg_erifuhdsufghsdofug.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              // 第一步：检查是否上传了图片或视频
                              if (_model.futureStyleCultureCollaboration ==
                                      null ||
                                  _model.futureStyleCultureCollaboration ==
                                      '') {
                                // 显示错误提示：请先上传图片或视频
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Text(
                                      'Please upload an image or video first',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                                return;
                              }

                              // 第二步：检查是否填写了内容
                              if (_model.textController.text.trim().isEmpty) {
                                // 显示错误提示：请填写内容
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.red,
                                    content: Text(
                                      'Please enter content for your post',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                                return;
                              }

                              // 第三步：检查金币是否充足（每个帖子花费30金币）
                              final currentUserBalance = FFAppState()
                                      .urbanOutfitTrendSharingUsers
                                      .elementAtOrNull(FFAppState()
                                          .urbanTrendVisualCollaborationCurrent)
                                      ?.streetTrendEchoSharingUserBalance ??
                                  0;

                              if (currentUserBalance < 30) {
                                // 金币不足，弹出YouthCultureStyleDiscoveryLabNotenoughWidget
                                await showDialog(
                                  barrierColor: Color(0x7F17171F),
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: GestureDetector(
                                        onTap: () {
                                          FocusScope.of(dialogContext)
                                              .unfocus();
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                        child:
                                            YouthCultureStyleDiscoveryLabNotenoughWidget(),
                                      ),
                                    );
                                  },
                                );
                                return;
                              }

                              // 所有验证通过，执行发布逻辑
                              // 扣除金币
                              FFAppState()
                                  .urbanOutfitTrendSharingUsers[FFAppState()
                                      .urbanTrendVisualCollaborationCurrent]
                                  .streetTrendEchoSharingUserBalance -= 30;

                              // 创建新帖子
                              FFAppState().addToSneakerheadCultureConnectPosts(
                                  CrossCultureTrendExchangeHubPostsStruct(
                                crossCultureTrendExchangeHubPostsId:
                                    FFAppState()
                                        .sneakerheadCultureConnectPosts
                                        .length,
                                crossCultureTrendExchangeHubPostsCreateId:
                                    FFAppState()
                                        .urbanTrendVisualCollaborationCurrent,
                                crossCultureTrendExchangeHubPostsDescribe:
                                    _model.textController.text,
                                crossCultureTrendExchangeHubPostsComments: 0,
                                crossCultureTrendExchangeHubPostsCreateTime:
                                    getCurrentTimestamp,
                                crossCultureTrendExchangeHubPostsPhoto: [
                                  _model.futureStyleCultureCollaboration!,
                                ],
                              ));

                              FFAppState().update(() {});

                              // 显示成功提示
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text(
                                    'Post published successfully! 30 coins deducted.',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  duration: Duration(seconds: 2),
                                ),
                              );

                              // 返回上一页
                              context.safePop();
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFF94FA),
                                    Color(0xFF696EFF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(-1, 0.34),
                                  end: AlignmentDirectional(1, -0.34),
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Text(
                                  'Send',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.roboto(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        fontSize: 24,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
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
