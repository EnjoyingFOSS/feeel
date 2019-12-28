import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:feeel/i18n/translations.dart';

class ImageRow extends StatelessWidget {
  static const _BYTES_IN_MIB = 1048576;
  final File imageFile;
  final double maxHeight;
  final Function onDelete;

  const ImageRow({Key key, this.imageFile, this.maxHeight = 256, this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
        decoration:
            BoxDecoration(color: Theme.of(context).primaryColor.withAlpha(25)),
        child: Column(children: [
          Container(
            constraints: BoxConstraints(maxHeight: maxHeight),
            child: Image.file(imageFile),
          ),
          Row(children: [
            FutureBuilder(
              future: imageFile.length(),
              builder: (context, AsyncSnapshot<int> snapshot) {
                if (snapshot.hasData) {
                  return Text(
                      (snapshot.data / _BYTES_IN_MIB).toStringAsPrecision(3) +
                          " MiB");
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.delete),
              tooltip: "Delete".i18n,
              onPressed: onDelete,
            )
          ])
        ]));
  }
}
