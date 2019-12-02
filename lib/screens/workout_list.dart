import 'package:feeel/db/db_helper.dart';
import 'package:feeel/models/exercise.dart';
import 'package:feeel/models/workout.dart';
import 'package:feeel/models/workout_exercise.dart';
import 'package:feeel/models/workout_listed.dart';
import 'package:feeel/screens/workout_detail.dart';
import 'package:feeel/widgets/triangle.dart';
import 'package:flutter/material.dart';
import 'package:feeel/i18n/translations.dart';

class WorkoutListScreen extends StatefulWidget {
  @override
  WorkoutListScreenState createState() {
    return WorkoutListScreenState();
  }
}

class WorkoutListScreenState extends State<WorkoutListScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<WorkoutListed>>(
        future: DBHelper.db.listWorkouts(),
        builder: (BuildContext context,
            AsyncSnapshot<List<WorkoutListed>> snapshot) {
          if (snapshot.hasData) {
            var workoutsListed = snapshot.data;

            return Scaffold(
                backgroundColor: Theme.of(context).backgroundColor,
                body: SafeArea(
                    child: CustomScrollView(slivers: <Widget>[
                  SliverPadding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      sliver: SliverAppBar(
                        centerTitle: false,
                        title: Text(
                          //todo add varying spans, e.g. "Feeel energized", "Feeel goood", "Feeel fresh" ,"Feeel the burn", ...
                          "Feeel",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              color: Theme.of(context).primaryColor),
                        ),
                        backgroundColor: Theme.of(context).backgroundColor,
                      )),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        var title = workoutsListed[index].title;
                        return Material(
                            color: Theme.of(context).backgroundColor,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return WorkoutDetailScreen(
                                        workoutListed: workoutsListed[index]);
                                  }));
                                },
                                child: Container(
                                    height: 112,
                                    width: double.infinity,
                                    child: Stack(
                                      children: [
                                        Triangle(
                                          dimension: 96,
                                          color: Color(0xffD9E9FF),
                                          seed: title.hashCode,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16),
                                            child: Column(
                                              children: [
                                                Text(title.i18n,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .title),
                                                // Text("7 min.")
                                              ],
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                            ))
                                      ],
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                    ))));
                      },
                      childCount: workoutsListed.length,
                    ),
                  )
                ])));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
