import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CountryFlagIcon extends StatelessWidget {
  final String code;
  final String package;
  final double width;
  final double height;
  final BoxFit fit;
  final Alignment alignment;
  final bool matchTextDirection;
  final bool allowDrawingOutsideViewBox;
  final WidgetBuilder placeholderBuilder;
  final String semanticsLabel;
  final bool excludeFromSemantics;

  CountryFlagIcon({
    @required this.code,
    Key key,
    this.package,
    this.width,
    this.height,
    this.fit: BoxFit.contain,
    this.alignment: Alignment.center,
    this.matchTextDirection: false,
    this.allowDrawingOutsideViewBox: false,
    this.placeholderBuilder,
    this.semanticsLabel,
    this.excludeFromSemantics: false,
  }) : super(key: key);

  static String uri = 'lib/assets/flags';

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      '$uri/${code.toLowerCase()}.svg',
      package: 'flutter_country',
      width: this.width,
      height: this.height,
      fit: this.fit,
      alignment: this.alignment,
      matchTextDirection: this.matchTextDirection,
      allowDrawingOutsideViewBox: this.allowDrawingOutsideViewBox,
      placeholderBuilder: this.placeholderBuilder,
      semanticsLabel: this.semanticsLabel,
      excludeFromSemantics: this.excludeFromSemantics,

    );
  }
}
