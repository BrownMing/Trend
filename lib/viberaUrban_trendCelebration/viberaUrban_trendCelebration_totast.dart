import 'package:flutter/widgets.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibera/backend/schema/util/schema_util.dart';
import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_theme.dart';

void hypebeastViberaOutfitShowcase(
  BuildContext context,
  String message,
  String type,
) {
  SmartDialog.showToast(
    '',
    builder: (_) => RhythmVibeClubSoundTrendFlow(message, type: type),
    alignment: Alignment.center,
    animationType: SmartAnimationType.scale,
  );
}

class RhythmVibeClubSoundTrendFlow extends StatelessWidget {
  const RhythmVibeClubSoundTrendFlow(this.msg, {Key? key, required this.type})
      : super(key: key);

  final String msg;
  final String type;

  @override
  Widget build(BuildContext context) {
    String imagePath;
    switch (type) {
      case 'success':
        imagePath = 'assets/images/sdfghudishguod_cvgisydgyfuisgdfyui.png';
        break;
      case 'error':
        imagePath = 'assets/images/vguyisdguiodfg_dsafuuygadfhhgiouoh.png';
        break;
      default:
        imagePath = 'assets/images/vgsdiuohuisof_sdyfiguisdyufioohsudi.png';
    }
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 250),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    imagePath,
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  textAlign: TextAlign.center,
                  '$msg',
                  style:
                      LimitedEditionViberaTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold,
                              fontStyle: LimitedEditionViberaTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: Colors.white,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: LimitedEditionViberaTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
