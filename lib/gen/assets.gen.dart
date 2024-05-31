/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const AssetGenImage frame54 = AssetGenImage('assets/Frame 54.png');
  static const AssetGenImage group103 = AssetGenImage('assets/Group 103.png');
  static const AssetGenImage group143 = AssetGenImage('assets/Group 143.png');
  static const AssetGenImage vector = AssetGenImage('assets/Vector.png');
  static const AssetGenImage vector2 = AssetGenImage('assets/Vector2.png');
  static const AssetGenImage cheer = AssetGenImage('assets/cheer.png');
  static const AssetGenImage cheers = AssetGenImage('assets/cheers.png');
  static const AssetGenImage entypoFlash =
      AssetGenImage('assets/entypo_flash.png');
  static const AssetGenImage fluentLockClosedKey16Filled =
      AssetGenImage('assets/fluent_lock-closed-key-16-filled.png');
  static const AssetGenImage icSharpPermIdentity =
      AssetGenImage('assets/ic_sharp-perm-identity.png');
  static const AssetGenImage img1 = AssetGenImage('assets/img1.png');
  static const AssetGenImage img2 = AssetGenImage('assets/img2.png');
  static const AssetGenImage img3 = AssetGenImage('assets/img3.png');
  static const AssetGenImage materialSymbolsPhotoCameraFrontSharp =
      AssetGenImage('assets/material-symbols_photo-camera-front-sharp.png');
  static const AssetGenImage materialSymbolsShieldLockOutlineSharp =
      AssetGenImage('assets/material-symbols_shield-lock-outline-sharp.png');
  static const AssetGenImage pics1 = AssetGenImage('assets/pics1.png');
  static const AssetGenImage pics10 = AssetGenImage('assets/pics10.png');
  static const AssetGenImage pics2 = AssetGenImage('assets/pics2.png');
  static const AssetGenImage pics3 = AssetGenImage('assets/pics3.png');
  static const AssetGenImage pics4 = AssetGenImage('assets/pics4.png');
  static const AssetGenImage pics5 = AssetGenImage('assets/pics5.png');
  static const AssetGenImage pics6 = AssetGenImage('assets/pics6.png');
  static const AssetGenImage pics7 = AssetGenImage('assets/pics7.png');
  static const AssetGenImage pics8 = AssetGenImage('assets/pics8.png');
  static const AssetGenImage pics9 = AssetGenImage('assets/pics9.png');
  static const AssetGenImage thumbsUp = AssetGenImage('assets/thumbs-up.png');
  static const AssetGenImage wallet = AssetGenImage('assets/wallet.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
        frame54,
        group103,
        group143,
        vector,
        vector2,
        cheer,
        cheers,
        entypoFlash,
        fluentLockClosedKey16Filled,
        icSharpPermIdentity,
        img1,
        img2,
        img3,
        materialSymbolsPhotoCameraFrontSharp,
        materialSymbolsShieldLockOutlineSharp,
        pics1,
        pics10,
        pics2,
        pics3,
        pics4,
        pics5,
        pics6,
        pics7,
        pics8,
        pics9,
        thumbsUp,
        wallet
      ];
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
