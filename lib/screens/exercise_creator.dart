// Copyright (C) 2020 Miroslav Mazel
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

import 'package:feeel/widgets/image_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:feeel/i18n/translations.dart';

class ExerciseCreator extends StatefulWidget {
  ExerciseCreator({Key key}) : super(key: key);

  @override
  _ExerciseCreatorState createState() => _ExerciseCreatorState();
}

class _ExerciseCreatorState extends State<ExerciseCreator> {
  final _imageFiles = List<File>();
  final _nameController = TextEditingController();
  final _stepsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //todo add some explainer text !!!
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.send),
        label: Text("Submit via email".i18n),
        onPressed: _sendMessage,
      ),
      appBar: AppBar(
        title: Text("Contribute an exercise".i18n),
      ),
      body: Column(children: [
        Material(
          color: Theme.of(context).primaryColorDark,
          child: Padding(
            child: Text(
              "Feeel relies on volunteers like you to submit exercises and exercise photos. Any photos you submit will first be privately processed, then sent to you for approval, and only then released in the app. Thanks for contributing!",
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          ),
          elevation: 4,
        ),
        Expanded(
            child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 64),
          child: Form(
              child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Exercise name".i18n),
                controller: _nameController,
              ),
              TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                    labelText: "How to perform exercise (optional)".i18n),
                keyboardType: TextInputType.multiline,
                controller: _stepsController,
              ),
              Container(
                height: 16,
              ),
              if (_imageFiles != null)
                ..._imageFiles.map((File imageFile) => Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: ImageRow(
                      imageFile: imageFile,
                      onDelete: () {
                        setState(() {
                          _imageFiles.remove(imageFile);
                        });
                      },
                    ))), //todo allow deletion
              ListTile(
                leading: Icon(Icons.add_photo_alternate),
                title: Text(
                  "Add photo from gallery".i18n,
                ),
                onTap: _addPhotoFromGallery,
              ),
              ListTile(
                leading: Icon(Icons.add_a_photo),
                title: Text("Take a photo".i18n),
                onTap: _addPhotoFromCamera,
              ),
              // ListTile(
              //   //todo
              //   leading: Icon(Icons.insert_link),
              //   title: Text("Add a link to your photo(s)".i18n),
              // )
            ],
          )),
        ))
      ]),
    );
  }

  Future _sendMessage() async {
    final MailOptions mailOptions = MailOptions(
      //todo TRANSLATE !!!
      body: """Hello,

I'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.

Exercise name: ${_nameController.text}
Exercise steps:
${_stepsController.text} """ +
                  Localizations.localeOf(context).languageCode ==
              "en" // todo TEST !!!
          ? ""
          : ("""-----

TRANSLATION:

""" +
              "Hello,\n\nI'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. By sending this message, I irrevocably agree to have the submitted name and description released under a CC BY-SA license and an AGPLv3 with an app store exception license. I also give permission to process the attached image(s) into low-poly variants. After they are processed, I will evaluate whether I am willing to license them under the CC BY-SA license.\n\nExercise name: %1s\nExercise steps:\n%2s"
                  .i18n
                  .replaceFirst("%1s", _nameController.text)
                  .replaceFirst("%2s", _stepsController.text)),
      subject:
          "Exercise proposal: %s".i18n.replaceFirst("%s", _nameController.text),
      recipients: ['contact.mirek@pm.me'],
      attachments: _imageFiles.map((File imageFile) => imageFile.path).toList(),
    );
    await FlutterMailer.send(mailOptions).catchError((Object error) {
      Scaffold.of(this.context).showSnackBar(SnackBar(
        content: Text("Email could not be sent".i18n),
      ));
    });

    // todo !!!
  }

  Future _addPhotoFromGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    _addPhoto(image);
  }

  Future _addPhotoFromCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    _addPhoto(image);
  }

  void _addPhoto(File image) {
    if (image != null) {
      setState(() {
        _imageFiles.add(image);
      });
    }
  }
}
