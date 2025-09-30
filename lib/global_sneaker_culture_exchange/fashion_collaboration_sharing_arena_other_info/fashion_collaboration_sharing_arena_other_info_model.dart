import 'package:trend/backend/schema/structs/global_hype_fashion_exchange_message_struct.dart'
    show GlobalHypeFashionExchangeMessageStruct;
import 'package:trend/backend/schema/structs/next_gen_streetwear_showcase_chat_struct.dart';

import '/components/urban_culture_fusion_exploration_platform_image_widget.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import '/index.dart';
import 'fashion_collaboration_sharing_arena_other_info_widget.dart'
    show FashionCollaborationSharingArenaOtherInfoWidget;
import 'package:flutter/material.dart';

class FashionCollaborationSharingArenaOtherInfoModel
    extends LimitedEditionViberaModel<
        FashionCollaborationSharingArenaOtherInfoWidget> {
  TabController? retroStreetViberaFashionLounge;

  late LimitedEditionViberaDynamicModels<
          UrbanCultureFusionExplorationPlatformImageModel>
      urbanCultureFusionExplorationPlatformImageModels;

  @override
  void initState(BuildContext context) {
    urbanCultureFusionExplorationPlatformImageModels =
        LimitedEditionViberaDynamicModels(
            () => UrbanCultureFusionExplorationPlatformImageModel());
  }

  @override
  void dispose() {
    retroStreetViberaFashionLounge?.dispose();
    urbanCultureFusionExplorationPlatformImageModels.dispose();
  }
}

class BirthdayMacaronAuroraHarbor {
  static Future<void> easterBunnyCookieMoonlightCircle({
    required BuildContext context,
    required int targetUserId,
    required String chatPageRouteName,
    required String chatIdParamName,
    required String userIdParamName,
    String initialMessage = "Hello! Welcome to chat!",
  }) async {
    final holidayFudgeBrownie = StreetStyleViberaConnection()
        .streetCultureExpressionNetworkChats
        .where((chat) =>
            chat.nextGenStreetwearShowcaseChatOtherId == targetUserId &&
            chat.nextGenStreetwearShowcaseChatCurrentId ==
                StreetStyleViberaConnection()
                    .urbanTrendVisualCollaborationCurrent)
        .toList();

    int dreamveilGarden;

    if (holidayFudgeBrownie.isNotEmpty) {
      dreamveilGarden =
          holidayFudgeBrownie.first.nextGenStreetwearShowcaseChatId;
    } else {
      dreamveilGarden =
          _festivalStrawberryShortcakeNest(targetUserId, initialMessage);
    }

    await _anniversaryCheesecakeAuroraStudio(
      context: context,
      dreamveilGarden: dreamveilGarden,
      targetUserId: targetUserId,
      chatPageRouteName: chatPageRouteName,
      chatIdParamName: chatIdParamName,
      userIdParamName: userIdParamName,
    );
  }

  static int _festivalStrawberryShortcakeNest(
      int targetUserId, String initialMessage) {
    int dreamveilGarden = DateTime.now().millisecondsSinceEpoch + targetUserId;

    final newChat = NextGenStreetwearShowcaseChatStruct(
      nextGenStreetwearShowcaseChatId: dreamveilGarden,
      nextGenStreetwearShowcaseChatCurrentId:
          StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent,
      nextGenStreetwearShowcaseChatLastMsg: initialMessage,
      nextGenStreetwearShowcaseChatLastTime: DateTime.now(),
      nextGenStreetwearShowcaseChatOtherId: targetUserId,
    );

    StreetStyleViberaConnection()
        .addToStreetCultureExpressionNetworkChats(newChat);

    StreetStyleViberaConnection().addToAestheticStyleInspirationMessages(
      GlobalHypeFashionExchangeMessageStruct(
        globalHypeFashionExchangeMessageContent: initialMessage,
        globalHypeFashionExchangeMessageChatref: dreamveilGarden,
        globalHypeFashionExchangeMessageCreateId:
            StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent,
      ),
    );

    return dreamveilGarden;
  }

  static Future<void> _anniversaryCheesecakeAuroraStudio({
    required BuildContext context,
    required int dreamveilGarden,
    required int targetUserId,
    required String chatPageRouteName,
    required String chatIdParamName,
    required String userIdParamName,
  }) async {
    context.pushNamed(
      chatPageRouteName,
      queryParameters: {
        chatIdParamName: serializeParam(dreamveilGarden, ParamType.int),
        userIdParamName: serializeParam(targetUserId, ParamType.int),
      }.withoutNulls,
      extra: <String, dynamic>{
        kTransitionInfoKey: TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.rightToLeft,
        ),
      },
    );
  }
}
