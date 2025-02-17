/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cloudy.json
  String get cloudyJson => 'assets/images/cloudy.json';

  /// File path: assets/images/cloudy.png
  AssetGenImage get cloudyPng =>
      const AssetGenImage('assets/images/cloudy.png');

  /// File path: assets/images/cloudy_icon.png
  AssetGenImage get cloudyIcon =>
      const AssetGenImage('assets/images/cloudy_icon.png');

  /// File path: assets/images/cloudy_rainny.png
  AssetGenImage get cloudyRainny =>
      const AssetGenImage('assets/images/cloudy_rainny.png');

  /// File path: assets/images/cold.png
  AssetGenImage get cold => const AssetGenImage('assets/images/cold.png');

  /// File path: assets/images/glass.png
  AssetGenImage get glass => const AssetGenImage('assets/images/glass.png');

  /// File path: assets/images/hot.png
  AssetGenImage get hot => const AssetGenImage('assets/images/hot.png');

  /// File path: assets/images/loupe.png
  AssetGenImage get loupe => const AssetGenImage('assets/images/loupe.png');

  /// File path: assets/images/messenger.png
  AssetGenImage get messenger =>
      const AssetGenImage('assets/images/messenger.png');

  /// File path: assets/images/moon.png
  AssetGenImage get moon => const AssetGenImage('assets/images/moon.png');

  /// File path: assets/images/rainny.json
  String get rainny => 'assets/images/rainny.json';

  /// File path: assets/images/search.png
  AssetGenImage get search => const AssetGenImage('assets/images/search.png');

  /// File path: assets/images/snow.json
  String get snow => 'assets/images/snow.json';

  /// File path: assets/images/sun.png
  AssetGenImage get sun => const AssetGenImage('assets/images/sun.png');

  /// File path: assets/images/sunny.json
  String get sunny => 'assets/images/sunny.json';

  /// File path: assets/images/thundar.json
  String get thundar => 'assets/images/thundar.json';

  /// File path: assets/images/thundar_rainny.json
  String get thundarRainny => 'assets/images/thundar_rainny.json';

  /// File path: assets/images/windy.json
  String get windy => 'assets/images/windy.json';

  /// List of all assets
  List<dynamic> get values => [
    cloudyJson,
    cloudyPng,
    cloudyIcon,
    cloudyRainny,
    cold,
    glass,
    hot,
    loupe,
    messenger,
    moon,
    rainny,
    search,
    snow,
    sun,
    sunny,
    thundar,
    thundarRainny,
    windy,
  ];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/cover.png
  AssetGenImage get cover => const AssetGenImage('assets/logos/cover.png');

  /// File path: assets/logos/default-monochrome-black.svg
  String get defaultMonochromeBlack =>
      'assets/logos/default-monochrome-black.svg';

  /// File path: assets/logos/default-monochrome-white.svg
  String get defaultMonochromeWhite =>
      'assets/logos/default-monochrome-white.svg';

  /// File path: assets/logos/default-monochrome.svg
  String get defaultMonochrome => 'assets/logos/default-monochrome.svg';

  /// File path: assets/logos/default.png
  AssetGenImage get defaultPng =>
      const AssetGenImage('assets/logos/default.png');

  /// File path: assets/logos/default.svg
  String get defaultSvg => 'assets/logos/default.svg';

  /// File path: assets/logos/isolated-layout.svg
  String get isolatedLayout => 'assets/logos/isolated-layout.svg';

  /// File path: assets/logos/isolated-monochrome-black.svg
  String get isolatedMonochromeBlack =>
      'assets/logos/isolated-monochrome-black.svg';

  /// File path: assets/logos/isolated-monochrome-white.svg
  String get isolatedMonochromeWhite =>
      'assets/logos/isolated-monochrome-white.svg';

  /// File path: assets/logos/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/logos/profile.png');

  /// List of all assets
  List<dynamic> get values => [
    cover,
    defaultMonochromeBlack,
    defaultMonochromeWhite,
    defaultMonochrome,
    defaultPng,
    defaultSvg,
    isolatedLayout,
    isolatedMonochromeBlack,
    isolatedMonochromeWhite,
    profile,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
