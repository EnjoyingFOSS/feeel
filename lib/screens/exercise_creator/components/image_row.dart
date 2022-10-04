// Copyright (C) 2019 Miroslav Mazel
//
// This file is part of Feeel.
//
// Feeel is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version. As an additional permission under
// section 7, you are allowed to distribute the software through an app
// store, even if that store has restrictive terms and conditions that
// are incompatible with the AGPL, provided that the source is also
// available under the AGPL with or without this permission through a
// channel without those restrictive terms and conditions.
//
// Feeel is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with Feeel.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class ImageRow extends StatelessWidget {
  static const _bytesInMiB = 1048576;
  final File imageFile;
  final double maxHeight;
  final void Function()? onDelete;

  const ImageRow(this.imageFile,
      {Key? key, this.maxHeight = 256, this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
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
                      "${(snapshot.data! / _bytesInMiB).toStringAsPrecision(3)} MiB");
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.delete),
              tooltip: "Delete".i18n,
              onPressed: onDelete,
            )
          ])
        ]));
  }
}
