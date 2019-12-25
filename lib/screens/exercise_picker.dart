import 'package:feeel/db/db_helper.dart';
import 'package:feeel/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';
import 'package:flutter_mailer/flutter_mailer.dart';

class ExercisePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExercisePickerState();
  }
}

class ExercisePickerState extends State<ExercisePicker> {
  List<Exercise> _exercises;
  List<int> _chosenExerciseIndices = List<int>(); //todo use boolean array
  Future<List<Exercise>> _future;

  @override
  void initState() {
    _future = DBHelper.db.queryExercises();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          textTheme: Theme.of(context).textTheme,
          brightness: Theme.of(context).brightness,
          centerTitle: false,
          backgroundColor: Color(0xffD9E9FF),
          title: Text("Add exercises".i18n),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.done),
          onPressed: () {
            List<Exercise> chosenExercises =
                List.generate(_chosenExerciseIndices.length, (index) {
              return _exercises[_chosenExerciseIndices[index]];
            });
            Navigator.pop(context, chosenExercises);
          },
        ),
        body: FutureBuilder(
            future: _future,
            builder: (context, AsyncSnapshot<List<Exercise>> snapshot) {
              if (snapshot.hasData) {
                _exercises = snapshot.data;
                return ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                    itemCount: _exercises.length + 1,
                    itemBuilder: (context, i) {
                      if (i < _exercises.length) {
                        var exercise = _exercises[i];
                        return CheckboxListTile(
                          value: _chosenExerciseIndices.contains(i),
                          title: Row(children: [
                            Text(exercise.name.i18n),
                            Spacer(),
                            IconButton(
                              //todo add labels to all icons
                              icon: Icon(Icons.info_outline),
                              onPressed: () => showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text(exercise.name.i18n),
                                        content:
                                            Text(exercise.description.i18n),
                                      )),
                            ),
                          ]),
                          secondary: Image.asset(exercise.image),
                          onChanged: (chosen) {
                            setState(() {
                              if (chosen) {
                                _chosenExerciseIndices.add(i);
                              } else {
                                _chosenExerciseIndices.remove(i);
                              }
                            });
                          },
                        );
                      } else {
                        return ListTile(
                          leading: Container(
                              width: 56,
                              alignment: Alignment.center,
                              child: Icon(Icons.add)),
                          title: Text("Add custom exercise".i18n),
                          onTap: () async {
                            // TOOD !!!
                            var name = "Exercise name";
                            final MailOptions mailOptions = MailOptions(
                              //todo TRANSLATE !!!
                              body:
                                  "Hello,\n\nI'm sending a proposal of an exercise. I hereby declare that all of it is my own work only. I am licensing the name and description under a CC BY-SA 4.0 license. I also give permission to process the attached image(s). After they are processed, I will evaluate whether I am willing to license them under the same license.", //todo translate
                              subject: 'Exercise proposal: $name',
                              recipients: ['contact.mirek@pm.me'],
                              // attachments: [
                              //   tempPath, //todo !!!!
                              // ],
                            );
                            await FlutterMailer.send(mailOptions)
                                .catchError(() {
                              Scaffold.of(this.context).showSnackBar(SnackBar(
                                content: Text("Email could not be sent"),
                              ));
                            });

                            // todo !!!
                          },
                        );
                      }
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
