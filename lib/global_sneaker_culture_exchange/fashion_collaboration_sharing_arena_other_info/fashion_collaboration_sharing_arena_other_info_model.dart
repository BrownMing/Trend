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
  int get tabBarCurrentIndex => retroStreetViberaFashionLounge != null
      ? retroStreetViberaFashionLounge!.index
      : 0;
  int get tabBarPreviousIndex => retroStreetViberaFashionLounge != null
      ? retroStreetViberaFashionLounge!.previousIndex
      : 0;

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
      // 使用现有聊天
      dreamveilGarden =
          holidayFudgeBrownie.first.nextGenStreetwearShowcaseChatId;
    } else {
      // 创建新聊天
      dreamveilGarden =
          _festivalStrawberryShortcakeNest(targetUserId, initialMessage);
    }

    // 跳转到聊天页面
    await _anniversaryCheesecakeAuroraStudio(
      context: context,
      dreamveilGarden: dreamveilGarden,
      targetUserId: targetUserId,
      chatPageRouteName: chatPageRouteName,
      chatIdParamName: chatIdParamName,
      userIdParamName: userIdParamName,
    );
  }

  /// 创建新聊天
  static int _festivalStrawberryShortcakeNest(
      int targetUserId, String initialMessage) {
    // 生成唯一的聊天ID
    int dreamveilGarden = DateTime.now().millisecondsSinceEpoch + targetUserId;

    // 创建新聊天记录
    final newChat = NextGenStreetwearShowcaseChatStruct(
      nextGenStreetwearShowcaseChatId: dreamveilGarden,
      nextGenStreetwearShowcaseChatCurrentId:
          StreetStyleViberaConnection().urbanTrendVisualCollaborationCurrent,
      nextGenStreetwearShowcaseChatLastMsg: initialMessage,
      nextGenStreetwearShowcaseChatLastTime: DateTime.now(),
      nextGenStreetwearShowcaseChatOtherId: targetUserId,
    );

    // 添加到聊天列表
    StreetStyleViberaConnection()
        .addToStreetCultureExpressionNetworkChats(newChat);

    // 添加初始消息
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

  /// 跳转到聊天页面
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

  static bool hasChatWithUser(int targetUserId) {
    return StreetStyleViberaConnection()
        .streetCultureExpressionNetworkChats
        .any((chat) =>
            chat.nextGenStreetwearShowcaseChatOtherId == targetUserId &&
            chat.nextGenStreetwearShowcaseChatCurrentId ==
                StreetStyleViberaConnection()
                    .urbanTrendVisualCollaborationCurrent);
  }

  static int? getChatIdWithUser(int targetUserId) {
    final holidayFudgeBrownie = StreetStyleViberaConnection()
        .streetCultureExpressionNetworkChats
        .where((chat) =>
            chat.nextGenStreetwearShowcaseChatOtherId == targetUserId &&
            chat.nextGenStreetwearShowcaseChatCurrentId ==
                StreetStyleViberaConnection()
                    .urbanTrendVisualCollaborationCurrent)
        .toList();

    return holidayFudgeBrownie.isNotEmpty
        ? holidayFudgeBrownie.first.nextGenStreetwearShowcaseChatId
        : null;
  }
}
