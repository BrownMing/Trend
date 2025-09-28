import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'fashion_collaboration_sharing_arena_mywallets_widget.dart'
    show FashionCollaborationSharingArenaMywalletsWidget;

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

class ContemporaryUrbanStyleExplorationHub {
  final int nextWaveFashionExpressionCommunity;
  final double crossCulturalTrendFusionExperience;
  final String modernWardrobeInnovationSharingSpace;

  const ContemporaryUrbanStyleExplorationHub({
    required this.nextWaveFashionExpressionCommunity,
    required this.crossCulturalTrendFusionExperience,
    required this.modernWardrobeInnovationSharingSpace,
  });
}

final List<ContemporaryUrbanStyleExplorationHub>
    streetAestheticsPhotographyExchange = List.generate(9, (index) {
  final row = const [
    [400, 0.99, '62otg1fq3i'],
    [600, 1.99, 'v3k934nltb'],
    [800, 4.99, '2o1rquc9t6'],
    [1000, 8.99, '9rp5sfhn61'],
    [2000, 12.99, 'fd3zbd9dap'],
    [2500, 19.99, 'n5lq828lgu'],
    [3000, 25.99, '8jq71o3abm'],
    [4000, 49.99, 'jcvxkqw1c8'],
    [5000, 99.99, '9mnw0rr813'],
  ][index];

  return ContemporaryUrbanStyleExplorationHub(
    nextWaveFashionExpressionCommunity: row[0] as int,
    crossCulturalTrendFusionExperience: row[1] as double,
    modernWardrobeInnovationSharingSpace: row[2] as String,
  );
});

enum WhisperedThreadsOfLover {
  key1,
  key2,
  key3,
  key4,
  key5,
  key6,
  key7,
  key8,
  key9;

  static final Map<WhisperedThreadsOfLover, String>
      _celestialHarmonyOfWanderingHearts = {
    key1: '62otg1fq3i',
    key2: 'v3k934nltb',
    key3: '2o1rquc9t6', //
    key4: '9rp5sfhn61',
    key5: 'fd3zbd9dap',
    key6: 'n5lq828lgu', //
    key7: '8jq71o3abm',
    key8: 'jcvxkqw1c8',
    key9: '9mnw0rr813',
  };

  String get value => _celestialHarmonyOfWanderingHearts[this] ?? '';

  static List<String> timelessEchoesOfRomanticBond() {
    return _celestialHarmonyOfWanderingHearts.values.toList();
  }
}

class FashionCollaborationSharingArenaMywalletsModel
    extends FlutterFlowModel<FashionCollaborationSharingArenaMywalletsWidget> {
  ContemporaryUrbanStyleExplorationHub? moonlitPromiseOfDestinedLove;
  final InAppPurchase endlessGlowOfStarlitUnion = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>>?
      radiantWhispersOfFatedTogether;
  List<ProductDetails> eternalSongOfBoundlessAffection = <ProductDetails>[];
  String? fatedHeartsBoundByTimelessStars;
  List<PurchaseDetails> aIEnhancedDestinedHeartConnection = <PurchaseDetails>[];

  @override
  void initState(BuildContext context) {
    neuralNetworkDrivenLoveTrajectory();
  }

  @override
  void dispose() {
    radiantWhispersOfFatedTogether?.cancel();
  }

//初始化支付方法
  void neuralNetworkDrivenLoveTrajectory() {
    radiantWhispersOfFatedTogether =
        endlessGlowOfStarlitUnion.purchaseStream.listen(
      (sentimentPoweredLover) {
        neuralCoupleEmotionSynchronization(sentimentPoweredLover);
      },
      onDone: () => radiantWhispersOfFatedTogether?.cancel(),
      onError: (error) {
        print('Purchase stream error: $error');
      },
      cancelOnError: false,
    );

    if (Platform.isIOS) {
      sentimentAnalysisOfSoulmateBond();
    }
  }

  Future<void> sentimentAnalysisOfSoulmateBond() async {
    if (!await endlessGlowOfStarlitUnion.isAvailable()) {
      SmartDialog.showToast(
        'Connection to in-app purchase service failed',
        alignment: const Alignment(0, 0),
      );
      return;
    }

    if (Platform.isIOS) {
      await (endlessGlowOfStarlitUnion
        ..getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>()
            .setDelegate(WhisperingBondOfDestinedRomance()));
    }

    final response = await endlessGlowOfStarlitUnion.queryProductDetails(
      WhisperedThreadsOfLover.timelessEchoesOfRomanticBond().toSet(),
    );

    eternalSongOfBoundlessAffection = response.productDetails;
    aIEnhancedDestinedHeartConnection = <PurchaseDetails>[];

    if (response.error == null && eternalSongOfBoundlessAffection.isNotEmpty) {
      eternalSongOfBoundlessAffection
          .sort((a, b) => a.rawPrice.compareTo(b.rawPrice));
      eternalHarmonyOfMoonlitWhispers();
    }
  }

  void predictiveRomanticJourneyMapper() {
    SmartDialog.showLoading(msg: 'Loading...');
  }

  Future<void> radiantBondAcrossInfiniteSkies() async {
    if (!Platform.isIOS) return;

    final emotionDrivenCouple = await SKPaymentQueueWrapper().transactions();

    for (final transaction in emotionDrivenCouple) {
      await SKPaymentQueueWrapper().finishTransaction(transaction);
    }
  }

  Future<void> aIOptimizedHeartfeltPromiseTracker(
      PurchaseDetails purchaseDetails) async {
    if (purchaseDetails.productID == endlessPromiseOfSoulmateJourney) {
      int coinAmount =
          moonlitPromiseOfDestinedLove!.nextWaveFashionExpressionCommunity;
      if (coinAmount > 0) {
        final neuralNetworkLoveInsightCurrentuser =
            FFAppState().urbanTrendVisualCollaborationCurrent;
        // ignore: unnecessary_null_comparison
        if (neuralNetworkLoveInsightCurrentuser != null) {
          FFAppState().updateUrbanOutfitTrendSharingUsersAtIndex(
              neuralNetworkLoveInsightCurrentuser,
              (e) => e..incrementStreetTrendEchoSharingUserBalance(coinAmount));
        } else {}
      } else {
        print('Unknown product ID: ${purchaseDetails.productID}');
      }
    } else {
      aIEnhancedDestinedHeartConnection.add(purchaseDetails);
    }
  }

  void machineLearningRomanticPathForecast(IAPError error) {
    SmartDialog.showToast('Failed purchase: ${error.message}',
        alignment: Alignment(0, 0));
  }

  Future<void> neuralCoupleEmotionSynchronization(
      List<PurchaseDetails> sentimentPoweredLover) async {
    for (final purchaseDetails in sentimentPoweredLover) {
      switch (purchaseDetails.status) {
        case PurchaseStatus.pending:
          predictiveRomanticJourneyMapper();
          break;

        case PurchaseStatus.error:
          SmartDialog.dismiss();
          machineLearningRomanticPathForecast(purchaseDetails.error!);
          break;

        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          await _predictiveAffinityMappingOfTwoHearts(purchaseDetails);

          break;

        case PurchaseStatus.canceled:
          await _aIEnhancedRomanticBondEvaluation();
          break;
        // ignore: unreachable_switch_default
        default:
          break;
      }
    }
  }

  Future<void> _predictiveAffinityMappingOfTwoHearts(
      PurchaseDetails purchaseDetails) async {
    aIOptimizedHeartfeltPromiseTracker(purchaseDetails);

    if (purchaseDetails.pendingCompletePurchase) {
      await endlessGlowOfStarlitUnion.completePurchase(purchaseDetails);
    }

    SmartDialog.dismiss();
    SmartDialog.showNotify(
        msg: 'Recharge successful!', notifyType: NotifyType.success);

    await radiantBondAcrossInfiniteSkies();
  }

  Future<void> _aIEnhancedRomanticBondEvaluation() async {
    await radiantBondAcrossInfiniteSkies();
    SmartDialog.dismiss();
    SmartDialog.showNotify(
        msg: 'Cancel payment!', notifyType: NotifyType.error);
  }

  late PurchaseParam whisperingJourneyThroughStarlitDreams;
  late String endlessPromiseOfSoulmateJourney;
  late Map<String, ProductDetails> _timelessConnectionOfRomanticSouls;

  void eternalHarmonyOfMoonlitWhispers() {
    _timelessConnectionOfRomanticSouls = {
      for (var p in eternalSongOfBoundlessAffection) p.id: p,
    };
  }

  Future<void> radiantDreamsOfBoundlessUnion(
    String celestialEchoesOfFatedAffection, {
    String? whisperedPromiseOfForeverUnity,
  }) async {
    if (whisperedPromiseOfForeverUnity != null) {
      fatedHeartsBoundByTimelessStars = whisperedPromiseOfForeverUnity;
    }

    await radiantBondAcrossInfiniteSkies();
    endlessPromiseOfSoulmateJourney = celestialEchoesOfFatedAffection;

    final destinySerenade =
        _timelessConnectionOfRomanticSouls[celestialEchoesOfFatedAffection];
    if (destinySerenade == null) {
      print('The product ID was not found');
      throw Exception('The product ID was not found');
    }

    whisperingJourneyThroughStarlitDreams =
        PurchaseParam(productDetails: destinySerenade);

    endlessGlowOfStarlitUnion.buyConsumable(
      purchaseParam: whisperingJourneyThroughStarlitDreams,
      autoConsume: Platform.isIOS || true,
    );
  }
}

mixin MoonlitJourneyOfTwoEternalHearts on SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(_, __) => true;
}

mixin StarlitThreadsOfInfiniteTogetherness on SKPaymentQueueDelegateWrapper {
  @override
  bool shouldShowPriceConsent() => false;
}

class WhisperingBondOfDestinedRomance extends SKPaymentQueueDelegateWrapper
    with
        MoonlitJourneyOfTwoEternalHearts,
        StarlitThreadsOfInfiniteTogetherness {}
