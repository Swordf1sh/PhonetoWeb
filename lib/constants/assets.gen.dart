/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsFlagsGen get flags => const $AssetsIconsFlagsGen();

  /// File path: assets/icons/google-play-badge-en.png
  AssetGenImage get googlePlayBadgeEn =>
      const AssetGenImage('assets/icons/google-play-badge-en.png');

  /// File path: assets/icons/google-play-badge-ge.png
  AssetGenImage get googlePlayBadgeGe =>
      const AssetGenImage('assets/icons/google-play-badge-ge.png');

  /// List of all assets
  List<AssetGenImage> get values => [googlePlayBadgeEn, googlePlayBadgeGe];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/showcase.png
  AssetGenImage get showcase =>
      const AssetGenImage('assets/images/showcase.png');

  /// List of all assets
  List<AssetGenImage> get values => [showcase];
}

class $AssetsPrivacyGen {
  const $AssetsPrivacyGen();

  /// File path: assets/privacy/privacy_policy_en.md
  String get privacyPolicyEn => 'assets/privacy/privacy_policy_en.md';

  /// File path: assets/privacy/privacy_policy_ge.md
  String get privacyPolicyGe => 'assets/privacy/privacy_policy_ge.md';

  /// List of all assets
  List<String> get values => [privacyPolicyEn, privacyPolicyGe];
}

class $AssetsIconsFlagsGen {
  const $AssetsIconsFlagsGen();

  /// File path: assets/icons/flags/georgia-flag.png
  AssetGenImage get georgiaFlag =>
      const AssetGenImage('assets/icons/flags/georgia-flag.png');

  /// File path: assets/icons/flags/usa-flag.png
  AssetGenImage get usaFlag =>
      const AssetGenImage('assets/icons/flags/usa-flag.png');

  /// List of all assets
  List<AssetGenImage> get values => [georgiaFlag, usaFlag];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsPrivacyGen privacy = $AssetsPrivacyGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
