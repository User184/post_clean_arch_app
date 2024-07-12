import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class ImagePost extends StatelessWidget {
  final String? imageUrl;
  final EdgeInsetsGeometry padding;
  const ImagePost({
    super.key,
    this.imageUrl,
    this.padding = const EdgeInsets.all(4.0),
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return (imageUrl != null)
        ? Padding(
            padding: padding,
            child: SizedBox(
              width: size.width * 0.16,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: Image.network(
                  imageUrl!,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        : Container(
            width: size.width * 0.16,
            height: size.width * 0.16,
            color: Colors.red, //Color.fromARGB(255, 194, 192, 192),
          );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty('description', 'ImagePost StatelessWidget'),
          ),
      );
}
