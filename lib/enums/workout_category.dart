enum WorkoutCategory { FULL_BODY, LEGS }

extension WorkoutCategoryExtension on WorkoutCategory {
  String get translationKey {
    switch (this) {
      case WorkoutCategory.FULL_BODY:
        return "Full body";
      case WorkoutCategory.LEGS:
        return "Legs";
      default:
        return null;
    }
  }

  int get colorInt {
    switch (this) {
      case WorkoutCategory.FULL_BODY:
        return 0xff0061DF;
      case WorkoutCategory.LEGS:
        return 0xffD65A00;
      default:
        return 0xff333333;
    }
  }
}
