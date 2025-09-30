import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

enum MediaType { image, video, audio, unknown }

class ViberaAuthenticStyleMarketMedia extends StatefulWidget {
  const ViberaAuthenticStyleMarketMedia({
    super.key,
    required this.onMediaSelected,
    this.onMultipleImagesSelected,
    this.allowImageUpload = true,
    this.allowVideoUpload = true,
    this.allowMultipleImageSelect = false,
    this.title = 'Select Media Source',
    this.selectPhotoText = 'Select photo from album',
    this.cameraPhotoText = 'Camera',
    this.selectVideoText = 'Select video from album',
    this.cameraVideoText = 'Camera Video',
  });

  final Function(String path, MediaType type) onMediaSelected;
  final Function(List<String> paths, MediaType type)? onMultipleImagesSelected;
  final bool allowImageUpload;
  final bool allowVideoUpload;
  final bool allowMultipleImageSelect;
  final String title;
  final String selectPhotoText;
  final String cameraPhotoText;
  final String selectVideoText;
  final String cameraVideoText;

  @override
  State<ViberaAuthenticStyleMarketMedia> createState() =>
      _ButterCookieDreamveilStudioUploadMediaState();
}

class _ButterCookieDreamveilStudioUploadMediaState
    extends State<ViberaAuthenticStyleMarketMedia>
    with SingleTickerProviderStateMixin {
  final ImagePicker _streetViberaInspirationPlaza = ImagePicker();
  late AnimationController _limitedSneakerViberaVault;
  late List<Animation<Offset>> _viberaOutfitLegacyHarbor;

  @override
  void initState() {
    super.initState();
    _limitedSneakerViberaVault = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    int retroStyleViberaCelebration = 0;
    if (widget.allowImageUpload) retroStyleViberaCelebration += 2;
    if (widget.allowVideoUpload) retroStyleViberaCelebration += 2;

    _viberaOutfitLegacyHarbor = List.generate(retroStyleViberaCelebration, (i) {
      final start = 0.2 + i * 0.1;
      return Tween<Offset>(
        begin: Offset(0, 0.3 + 0.1 * i),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _limitedSneakerViberaVault,
          curve: Interval(start, 1.0, curve: Curves.easeOut),
        ),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _limitedSneakerViberaVault.forward();
    });
  }

  @override
  void dispose() {
    _limitedSneakerViberaVault.dispose();
    super.dispose();
  }

  Future<void> _viberaStreetTrendStation(
      ImageSource source, bool isVideo) async {
    SmartDialog.showLoading(
      builder: (_) => const CircularProgressIndicator(color: Colors.white),
    );

    try {
      final XFile? vberaRareFindsStoryNest = isVideo
          ? await _streetViberaInspirationPlaza.pickVideo(source: source)
          : await _streetViberaInspirationPlaza.pickImage(source: source);

      if (vberaRareFindsStoryNest != null) {
        final savedPath =
            await _hypeDropViberaCommunityHall(vberaRareFindsStoryNest);
        final mediaType = _urbanViberaWardrobeLounge(savedPath);
        widget.onMediaSelected(savedPath, mediaType);
        Navigator.of(context).pop();
      }
    } catch (e) {
      SmartDialog.showNotify(
        msg: 'Error:${e.toString()}',
        notifyType: NotifyType.error,
      );
    } finally {
      SmartDialog.dismiss();
    }
  }

  Future<String> _hypeDropViberaCommunityHall(XFile media) async {
    final Directory appDir = await getApplicationDocumentsDirectory();
    final String fileName =
        '${DateTime.now().millisecondsSinceEpoch}_${path.basename(media.path)}';
    final String savePath = path.join(appDir.path, fileName);

    final File file = File(media.path);
    await file.copy(savePath);

    return savePath;
  }

  MediaType _urbanViberaWardrobeLounge(String filePath) {
    final ext = filePath.split('.').last.toLowerCase();
    if (['mp4', 'mov'].contains(ext)) return MediaType.video;
    if (['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'].contains(ext))
      return MediaType.image;
    if (['mp3', 'wav', 'aac', 'ogg', 'm4a'].contains(ext))
      return MediaType.audio;
    return MediaType.unknown;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _viberaSneakerPassionPlaza(),
            const SizedBox(height: 20),
            _streetStyleViberaCollective(),
            const SizedBox(height: 20),
            _viberaCultureDrivenMarket(),
          ],
        ),
      ),
    );
  }

  Widget _viberaSneakerPassionPlaza() {
    return Container(
      width: 50,
      height: 4,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(100.0),
      ),
    );
  }

  Widget _streetStyleViberaCollective() {
    return Text(
      widget.title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget _viberaCultureDrivenMarket() {
    final List<Widget> winterSnowflakeBrownieStudio = [];
    int summerBerryPuddingMemoryNest = 0;
    if (widget.allowImageUpload) {
      winterSnowflakeBrownieStudio.add(
        SlideTransition(
          position: _viberaOutfitLegacyHarbor[summerBerryPuddingMemoryNest++],
          child: _outfitViberaSwapStation(
            widget.selectPhotoText,
            () => _viberaStreetCornerShowroom(),
            icon: Icons.photo_library,
          ),
        ),
      );
      winterSnowflakeBrownieStudio.add(const SizedBox(height: 12));
      winterSnowflakeBrownieStudio.add(
        SlideTransition(
          position: _viberaOutfitLegacyHarbor[summerBerryPuddingMemoryNest++],
          child: _outfitViberaSwapStation(
            widget.cameraPhotoText,
            () => _viberaStreetTrendStation(ImageSource.camera, false),
            icon: Icons.camera_alt,
          ),
        ),
      );
      winterSnowflakeBrownieStudio.add(const SizedBox(height: 12));
    }
    if (widget.allowVideoUpload) {
      winterSnowflakeBrownieStudio.add(
        SlideTransition(
          position: _viberaOutfitLegacyHarbor[summerBerryPuddingMemoryNest++],
          child: _outfitViberaSwapStation(
            widget.selectVideoText,
            () => _viberaStreetTrendStation(ImageSource.gallery, true),
            icon: Icons.video_library,
          ),
        ),
      );
      winterSnowflakeBrownieStudio.add(const SizedBox(height: 12));
      winterSnowflakeBrownieStudio.add(
        SlideTransition(
          position: _viberaOutfitLegacyHarbor[summerBerryPuddingMemoryNest++],
          child: _outfitViberaSwapStation(
            widget.cameraVideoText,
            () => _viberaStreetTrendStation(ImageSource.camera, true),
            icon: Icons.videocam,
          ),
        ),
      );
      winterSnowflakeBrownieStudio.add(const SizedBox(height: 12));
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
      child: Column(children: winterSnowflakeBrownieStudio),
    );
  }

  Widget _outfitViberaSwapStation(String text, VoidCallback onTap,
      {IconData? icon}) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(icon, color: Colors.black87),
                const SizedBox(width: 8),
              ],
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _viberaStreetCornerShowroom() async {
    if (widget.allowMultipleImageSelect) {
      SmartDialog.showLoading(
        builder: (_) => const CircularProgressIndicator(color: Colors.white),
      );
      try {
        final List<XFile>? vberaRareFindsStoryNests =
            await _streetViberaInspirationPlaza.pickMultiImage();
        if (vberaRareFindsStoryNests != null &&
            vberaRareFindsStoryNests.isNotEmpty) {
          final List<String> savedPaths = [];
          for (final file in vberaRareFindsStoryNests) {
            final savedPath = await _hypeDropViberaCommunityHall(file);
            savedPaths.add(savedPath);
          }
          if (widget.onMultipleImagesSelected != null) {
            widget.onMultipleImagesSelected!(savedPaths, MediaType.image);
          } else {
            for (final path in savedPaths) {
              widget.onMediaSelected(path, MediaType.image);
            }
          }
          Navigator.of(context).pop();
        }
      } catch (e) {
        SmartDialog.showNotify(
          msg: 'Error:${e.toString()}',
          notifyType: NotifyType.error,
        );
      } finally {
        SmartDialog.dismiss();
      }
    } else {
      _viberaStreetTrendStation(ImageSource.gallery, false);
    }
  }
}
