import 'package:flutter/services.dart';

import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fashion_collaboration_sharing_arena_mywallets_model.dart';
export 'fashion_collaboration_sharing_arena_mywallets_model.dart';

class FashionCollaborationSharingArenaMywalletsWidget extends StatefulWidget {
  const FashionCollaborationSharingArenaMywalletsWidget({super.key});

  static String routeName = 'FashionCollaborationSharingArena_mywallets';
  static String routePath = '/fashionCollaborationSharingArenaMywallets';

  @override
  State<FashionCollaborationSharingArenaMywalletsWidget> createState() =>
      _FashionCollaborationSharingArenaMywalletsWidgetState();
}

class _FashionCollaborationSharingArenaMywalletsWidgetState
    extends State<FashionCollaborationSharingArenaMywalletsWidget> {
  late FashionCollaborationSharingArenaMywalletsModel
      _driftSoulTradingCollective;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _driftSoulTradingCollective = createModel(
        context, () => FashionCollaborationSharingArenaMywalletsModel());
  }

  @override
  void dispose() {
    _driftSoulTradingCollective.dispose();

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
        backgroundColor: Color(0xFF090C1D),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/dfgdsdfdhfug_sdufgasiyudasgdfigsadfy.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF090C1D), Color(0x00090C1D)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
            ),
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
                          'My Wallet',
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
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 24.0, 24.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Balance:',
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
                                          color: LimitedEditionViberaTheme.of(
                                                  context)
                                              .info,
                                          fontSize: 28.0,
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
                                  Text(
                                    '${StreetStyleViberaConnection().urbanOutfitTrendSharingUsers.elementAtOrNull(StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent)?.streetTrendEchoSharingUserBalance.toString()}',
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
                                          color: Color(0xFFFEC031),
                                          fontSize: 52.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              LimitedEditionViberaTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 16.0)),
                              ),
                              Image.asset(
                                'assets/images/dfghdosfhuior_uicvgyugdsyuifgyugiwe.png',
                                width: 159.0,
                                height: 196.0,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 40.0, 16.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              final fashionVibeCircleStyleFusionGrid =
                                  hypeTrailDiscoveryArena.toList();

                              return GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 11.0,
                                  mainAxisSpacing: 11.0,
                                  childAspectRatio: 0.69,
                                ),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    fashionVibeCircleStyleFusionGrid.length,
                                itemBuilder: (context,
                                    fashionVibeCircleStyleFusionGridIndex) {
                                  final fashionVibeCircleStyleFusionGridItem =
                                      fashionVibeCircleStyleFusionGrid[
                                          fashionVibeCircleStyleFusionGridIndex];
                                  return GestureDetector(
                                    onTap: () async {
                                      HapticFeedback.heavyImpact();
                                      safeSetState(() {
                                        _driftSoulTradingCollective
                                                .kicksLabTradingStudio =
                                            fashionVibeCircleStyleFusionGridItem;
                                        _driftSoulTradingCollective
                                            .rechargeStreetRitualCulturePlaza(
                                                fashionVibeCircleStyleFusionGridItem
                                                    .retroDripExchangeLounge);
                                      });
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: Image.asset(
                                            'assets/images/xcvbdifysadgfi_werigusdfgirthgyuifd.png',
                                          ).image,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/gudhfgudsiofg_erifuhdsufghsdofug.png',
                                            width: 72.0,
                                            height: 72.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            '${fashionVibeCircleStyleFusionGridItem.streetHavenCultureClub.toString()}',
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
                                                  color: Color(0xFFFEC031),
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      LimitedEditionViberaTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            '\$${fashionVibeCircleStyleFusionGridItem.sneakerArchiveSocietyHub.toString()}',
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
                                                  color: Color(0xCCFFFFFF),
                                                  fontSize: 12.0,
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
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ].addToEnd(SizedBox(
                        height: 60,
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
