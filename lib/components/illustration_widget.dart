import 'package:feeel/i18n/translations.dart';
import 'package:feeel/components/flipped.dart';
import 'package:flutter/widgets.dart';

class IllustrationWidget extends StatelessWidget {
  const IllustrationWidget(
      {Key? key, required this.imageAssetString, required this.flipped})
      : super(key: key);

  final String? imageAssetString;
  final bool flipped;

  @override
  Widget build(BuildContext context) {
    return (imageAssetString != null)
        ? flipped
            ? Flipped(child: Image.asset(imageAssetString!))
            : Image.asset(imageAssetString!)
        : Text("Image missing".i18n);
  }
}
