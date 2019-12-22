import 'package:feeel/enums/workout_type.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/screens/workout_detail.dart';
import 'package:feeel/widgets/triangle.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutListItem extends StatelessWidget {
  final Widget trailing;
  final WorkoutListed workoutListed;

  const WorkoutListItem(this.workoutListed, {Key key, this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = workoutListed.title;
    return Material(
        color: Theme.of(context).backgroundColor,
        child: // Row(children: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return WorkoutDetailScreen(workoutListed: workoutListed);
                  }));
                },
                child: Container(
                    height: 112,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Padding(child: 
                        Triangle(
                          dimension: 96,
                          color:
                              Color(0xffD9E9FF), //todo color based on category
                          seed: title.hashCode,
                        ), padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),),
                        Padding(
                            padding: EdgeInsets.fromLTRB(16, 8, 40, 8),
                            child: Column(
                              children: [
                                Text(
                                    (workoutListed.type == WorkoutType.DEFAULT)
                                        ? title.i18n
                                        : title,
                                    style: Theme.of(context).textTheme.title),
                                // Text("7 min.")
                              ],
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            )),
                        if (trailing != null)
                          Align(
                              alignment: Alignment.centerRight, child: trailing)
                      ],
                      alignment: AlignmentDirectional.centerStart,
                    )))
        //])
        );
  }
}
