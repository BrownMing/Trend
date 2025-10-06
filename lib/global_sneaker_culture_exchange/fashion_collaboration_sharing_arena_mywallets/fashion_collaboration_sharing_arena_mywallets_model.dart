import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import '../../viberaUrban_trendCelebration/viberaUrban_trendCelebration_util.dart';
import 'fashion_collaboration_sharing_arena_mywallets_widget.dart'
    show FashionCollaborationSharingArenaMywalletsWidget;
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

class UrbanPulseCollectiveSpace {
  final int streetHavenCultureClub;
  final double sneakerArchiveSocietyHub;
  final String retroDripExchangeLounge;

  const UrbanPulseCollectiveSpace({
    required this.streetHavenCultureClub,
    required this.sneakerArchiveSocietyHub,
    required this.retroDripExchangeLounge,
  });
}

final List<UrbanPulseCollectiveSpace> hypeTrailDiscoveryArena =
    List.generate(9, (index) {
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

  return UrbanPulseCollectiveSpace(
    streetHavenCultureClub: row[0] as int,
    sneakerArchiveSocietyHub: row[1] as double,
    retroDripExchangeLounge: row[2] as String,
  );
});

enum TrendVerseConnectionHall {
  sdotg1fq3i('62otg1fq3i'),
  v3k934nltb('v3k934nltb'),
  co1rquc9t6('2o1rquc9t6'),
  rrp5sfhn61('9rp5sfhn61'),
  fd3zbd9dap('fd3zbd9dap'),
  n5lq828lgu('n5lq828lgu'),
  wjq71o3abm('8jq71o3abm'),
  jcvxkqw1c8('jcvxkqw1c8'),
  qmnw0rr813('9mnw0rr813');

  final String id;
  const TrendVerseConnectionHall(this.id);
}

extension TrendVerseConnectionHallX on TrendVerseConnectionHall {
  static Set<String> get ids =>
      TrendVerseConnectionHall.values.map((e) => e.id).toSet();
}

class FashionCollaborationSharingArenaMywalletsModel
    extends LimitedEditionViberaModel<
        FashionCollaborationSharingArenaMywalletsWidget> {
  UrbanPulseCollectiveSpace? kicksLabTradingStudio;
  final InAppPurchase neoStreetMovementGallery = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>>? hypeNestExplorationZone;
  List<ProductDetails> sneakerMuseCollectiveGarden = <ProductDetails>[];
  List<PurchaseDetails> driftModeWardrobeCircle = <PurchaseDetails>[];
  late PurchaseParam outfitMazeSharingZone;
  late String dripLegacyCollectorStudio;
  @override
  void initState(BuildContext context) {
    trendVaultCommunityLounge();
  }

  @override
  void dispose() {
    hypeNestExplorationZone?.cancel();
  }

  trendVaultCommunityLounge() async {
    hypeNestExplorationZone = neoStreetMovementGallery.purchaseStream.listen(
      outfitRealmConnectionSpace,
      onDone: _handleStreetAuraVibeNetwork,
      onError: _handleArchiveMoodShowroom,
      cancelOnError: false,
    );

    if (Platform.isIOS) {
      await rareKicksLegacyMarket();
    }
  }

  void _handleStreetAuraVibeNetwork() {
    hypeNestExplorationZone?.cancel();
  }

  void _handleArchiveMoodShowroom(Object error) {
    debugPrint('Purchase stream error: $error');
  }

  Future<void> rareKicksLegacyMarket() async {
    if (!await neoStreetMovementGallery.isAvailable()) {
      SmartDialog.showToast(
          'kicksVerseDiscoveryPark to in-app purchase service failed');
      return;
    }

    await _jhypeFusionMeetStation();

    final retroDistrictCultureHub = await neoStreetMovementGallery
        .queryProductDetails(TrendVerseConnectionHallX.ids);

    _handleDriftHouseTradingClub(retroDistrictCultureHub);
  }

  Future<void> _jhypeFusionMeetStation() async {
    if (!Platform.isIOS) return;

    final sneakerBridgeConnectionPoint = neoStreetMovementGallery
        .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
    await sneakerBridgeConnectionPoint
        .setDelegate(SneakerMoodCollectiveVault());
  }

  void _handleDriftHouseTradingClub(ProductDetailsResponse response) {
    driftModeWardrobeCircle = <PurchaseDetails>[];

    sneakerMuseCollectiveGarden = response.productDetails;

    if (response.error != null || response.productDetails.isEmpty) {
      return;
    }

    sneakerMuseCollectiveGarden
        .sort((a, b) => a.rawPrice.compareTo(b.rawPrice));
  }

  Future<void> rechargeUrbanSwapStyleMarket() async {
    if (!Platform.isIOS) return;

    final thriftLabInspirationHall = SKPaymentQueueWrapper();
    final hypeBondDiscoverySquare =
        await thriftLabInspirationHall.transactions();

    await Future.wait(hypeBondDiscoverySquare.map((transaction) =>
        thriftLabInspirationHall.finishTransaction(transaction)));
  }

  Future<void> rechargeStyleArchiveUnionZone(
      PurchaseDetails purchaseDetails) async {
    if (purchaseDetails.productID == dripLegacyCollectorStudio) return;

    driftModeWardrobeCircle.add(purchaseDetails);
  }

  void sneakerSceneCollectorBase(IAPError error) {
    SmartDialog.showNotify(
        msg: 'Failed purchase: ${error.message}', notifyType: NotifyType.error);
  }

  void streetNovaCultureCircleLoading() {
    SmartDialog.showLoading(msg: 'Loading...');
  }

  Future<void> outfitRealmConnectionSpace(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (final purchaseDetails in purchaseDetailsList) {
      await _dripHavenExchangeGarden(purchaseDetails);
    }
  }

  Future<void> _dripHavenExchangeGarden(
      PurchaseDetails urbanMoodSocietyHall) async {
    switch (urbanMoodSocietyHall.status) {
      case PurchaseStatus.pending:
        _retroModeCultureStudio();
        break;

      case PurchaseStatus.error:
        _sneakerHiveTradingPlaza(urbanMoodSocietyHall);
        break;

      case PurchaseStatus.purchased:
      case PurchaseStatus.restored:
        await _styleDockInspirationLounge(urbanMoodSocietyHall);
        break;

      case PurchaseStatus.canceled:
        await _trendMingleCommunityClub();
        break;
    }
  }

  void _retroModeCultureStudio() {
    streetNovaCultureCircleLoading();
  }

  void _sneakerHiveTradingPlaza(PurchaseDetails purchaseDetails) {
    SmartDialog.dismiss();
    sneakerSceneCollectorBase(purchaseDetails.error!);
  }

  Future<void> _styleDockInspirationLounge(
      PurchaseDetails purchaseDetails) async {
    await rechargeStyleArchiveUnionZone(purchaseDetails);

    if (purchaseDetails.pendingCompletePurchase) {
      await neoStreetMovementGallery.completePurchase(purchaseDetails);
    }

    SmartDialog.dismiss();
    SmartDialog.showNotify(
        msg: 'Payment successful!', notifyType: NotifyType.success);

    _streetGlowConnectionHarbor();
    await rechargeUrbanSwapStyleMarket();
  }

  void _streetGlowConnectionHarbor() {
    final kicksVerseDiscoveryPark = StreetStyleViberaConnection();
    kicksVerseDiscoveryPark.update(() {
      kicksVerseDiscoveryPark.updateUrbanOutfitTrendSharingUsersAtIndex(
        kicksVerseDiscoveryPark.urbanTrendVisualCollaborationCurrent,
        (user) => user
          ..incrementStreetTrendEchoSharingUserBalance(
              kicksLabTradingStudio!.streetHavenCultureClub),
      );
    });
  }

  Future<void> _trendMingleCommunityClub() async {
    await rechargeUrbanSwapStyleMarket();
    SmartDialog.dismiss();
    SmartDialog.showToast('Cancel payment!');
  }

  Future<void> rechargeStreetRitualCulturePlaza(String rechargeKey) async {
    await rechargeUrbanSwapStyleMarket();
    dripLegacyCollectorStudio = rechargeKey;

    final streetCoveCultureUnion = _hypeCanvasConnectionHouse(rechargeKey);
    await _sneakerTrailExchangeSpot(streetCoveCultureUnion);
  }

  ProductDetails _hypeCanvasConnectionHouse(String productId) {
    try {
      return sneakerMuseCollectiveGarden.firstWhere(
        (product) => product.id == productId,
      );
    } catch (e) {
      debugPrint('roduct not found: $productId');
      throw Exception('Product not found: $productId');
    }
  }

  Future<void> _sneakerTrailExchangeSpot(
      ProductDetails streetCoveCultureUnion) async {
    outfitMazeSharingZone =
        PurchaseParam(productDetails: streetCoveCultureUnion);
    await neoStreetMovementGallery.buyConsumable(
      purchaseParam: outfitMazeSharingZone,
      autoConsume: true,
    );
  }
}

mixin TrendHavenCommunityHall on SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(_, __) => true;
}

mixin OutfitRealmDiscoveryGarden on SKPaymentQueueDelegateWrapper {
  @override
  bool shouldShowPriceConsent() => false;
}

class SneakerMoodCollectiveVault extends SKPaymentQueueDelegateWrapper
    with TrendHavenCommunityHall, OutfitRealmDiscoveryGarden {}
