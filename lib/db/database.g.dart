// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Exercise extends DataClass implements Insertable<Exercise> {
  final int wgerId;
  final String name;
  final String? description;
  final ExerciseType type;
  final bool flipped;
  final String? imageSlug;
  final String descLicense;
  final String? imageLicense;
  final bool animated;
  Exercise(
      {required this.wgerId,
      required this.name,
      this.description,
      required this.type,
      required this.flipped,
      this.imageSlug,
      required this.descLicense,
      this.imageLicense,
      required this.animated});
  factory Exercise.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Exercise(
      wgerId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}wger_id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      type: $ExercisesTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']))!,
      flipped: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}flipped'])!,
      imageSlug: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_slug']),
      descLicense: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}desc_license'])!,
      imageLicense: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_license']),
      animated: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}animated'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['wger_id'] = Variable<int>(wgerId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    {
      final converter = $ExercisesTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type)!);
    }
    map['flipped'] = Variable<bool>(flipped);
    if (!nullToAbsent || imageSlug != null) {
      map['image_slug'] = Variable<String?>(imageSlug);
    }
    map['desc_license'] = Variable<String>(descLicense);
    if (!nullToAbsent || imageLicense != null) {
      map['image_license'] = Variable<String?>(imageLicense);
    }
    map['animated'] = Variable<bool>(animated);
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      wgerId: Value(wgerId),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: Value(type),
      flipped: Value(flipped),
      imageSlug: imageSlug == null && nullToAbsent
          ? const Value.absent()
          : Value(imageSlug),
      descLicense: Value(descLicense),
      imageLicense: imageLicense == null && nullToAbsent
          ? const Value.absent()
          : Value(imageLicense),
      animated: Value(animated),
    );
  }

  factory Exercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exercise(
      wgerId: serializer.fromJson<int>(json['wgerId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      type: serializer.fromJson<ExerciseType>(json['type']),
      flipped: serializer.fromJson<bool>(json['flipped']),
      imageSlug: serializer.fromJson<String?>(json['imageSlug']),
      descLicense: serializer.fromJson<String>(json['descLicense']),
      imageLicense: serializer.fromJson<String?>(json['imageLicense']),
      animated: serializer.fromJson<bool>(json['animated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'wgerId': serializer.toJson<int>(wgerId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'type': serializer.toJson<ExerciseType>(type),
      'flipped': serializer.toJson<bool>(flipped),
      'imageSlug': serializer.toJson<String?>(imageSlug),
      'descLicense': serializer.toJson<String>(descLicense),
      'imageLicense': serializer.toJson<String?>(imageLicense),
      'animated': serializer.toJson<bool>(animated),
    };
  }

  Exercise copyWith(
          {int? wgerId,
          String? name,
          String? description,
          ExerciseType? type,
          bool? flipped,
          String? imageSlug,
          String? descLicense,
          String? imageLicense,
          bool? animated}) =>
      Exercise(
        wgerId: wgerId ?? this.wgerId,
        name: name ?? this.name,
        description: description ?? this.description,
        type: type ?? this.type,
        flipped: flipped ?? this.flipped,
        imageSlug: imageSlug ?? this.imageSlug,
        descLicense: descLicense ?? this.descLicense,
        imageLicense: imageLicense ?? this.imageLicense,
        animated: animated ?? this.animated,
      );
  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('wgerId: $wgerId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('flipped: $flipped, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('descLicense: $descLicense, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('animated: $animated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(wgerId, name, description, type, flipped,
      imageSlug, descLicense, imageLicense, animated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.wgerId == this.wgerId &&
          other.name == this.name &&
          other.description == this.description &&
          other.type == this.type &&
          other.flipped == this.flipped &&
          other.imageSlug == this.imageSlug &&
          other.descLicense == this.descLicense &&
          other.imageLicense == this.imageLicense &&
          other.animated == this.animated);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> wgerId;
  final Value<String> name;
  final Value<String?> description;
  final Value<ExerciseType> type;
  final Value<bool> flipped;
  final Value<String?> imageSlug;
  final Value<String> descLicense;
  final Value<String?> imageLicense;
  final Value<bool> animated;
  const ExercisesCompanion({
    this.wgerId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.flipped = const Value.absent(),
    this.imageSlug = const Value.absent(),
    this.descLicense = const Value.absent(),
    this.imageLicense = const Value.absent(),
    this.animated = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.wgerId = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    required ExerciseType type,
    this.flipped = const Value.absent(),
    this.imageSlug = const Value.absent(),
    required String descLicense,
    this.imageLicense = const Value.absent(),
    this.animated = const Value.absent(),
  })  : name = Value(name),
        type = Value(type),
        descLicense = Value(descLicense);
  static Insertable<Exercise> custom({
    Expression<int>? wgerId,
    Expression<String>? name,
    Expression<String?>? description,
    Expression<ExerciseType>? type,
    Expression<bool>? flipped,
    Expression<String?>? imageSlug,
    Expression<String>? descLicense,
    Expression<String?>? imageLicense,
    Expression<bool>? animated,
  }) {
    return RawValuesInsertable({
      if (wgerId != null) 'wger_id': wgerId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (flipped != null) 'flipped': flipped,
      if (imageSlug != null) 'image_slug': imageSlug,
      if (descLicense != null) 'desc_license': descLicense,
      if (imageLicense != null) 'image_license': imageLicense,
      if (animated != null) 'animated': animated,
    });
  }

  ExercisesCompanion copyWith(
      {Value<int>? wgerId,
      Value<String>? name,
      Value<String?>? description,
      Value<ExerciseType>? type,
      Value<bool>? flipped,
      Value<String?>? imageSlug,
      Value<String>? descLicense,
      Value<String?>? imageLicense,
      Value<bool>? animated}) {
    return ExercisesCompanion(
      wgerId: wgerId ?? this.wgerId,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      flipped: flipped ?? this.flipped,
      imageSlug: imageSlug ?? this.imageSlug,
      descLicense: descLicense ?? this.descLicense,
      imageLicense: imageLicense ?? this.imageLicense,
      animated: animated ?? this.animated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (wgerId.present) {
      map['wger_id'] = Variable<int>(wgerId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (type.present) {
      final converter = $ExercisesTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type.value)!);
    }
    if (flipped.present) {
      map['flipped'] = Variable<bool>(flipped.value);
    }
    if (imageSlug.present) {
      map['image_slug'] = Variable<String?>(imageSlug.value);
    }
    if (descLicense.present) {
      map['desc_license'] = Variable<String>(descLicense.value);
    }
    if (imageLicense.present) {
      map['image_license'] = Variable<String?>(imageLicense.value);
    }
    if (animated.present) {
      map['animated'] = Variable<bool>(animated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('wgerId: $wgerId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('flipped: $flipped, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('descLicense: $descLicense, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('animated: $animated')
          ..write(')'))
        .toString();
  }
}

class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, Exercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExercisesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _wgerIdMeta = const VerificationMeta('wgerId');
  @override
  late final GeneratedColumn<int?> wgerId = GeneratedColumn<int?>(
      'wger_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<ExerciseType, int?> type =
      GeneratedColumn<int?>('type', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<ExerciseType>($ExercisesTable.$converter0);
  final VerificationMeta _flippedMeta = const VerificationMeta('flipped');
  @override
  late final GeneratedColumn<bool?> flipped = GeneratedColumn<bool?>(
      'flipped', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (flipped IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _imageSlugMeta = const VerificationMeta('imageSlug');
  @override
  late final GeneratedColumn<String?> imageSlug = GeneratedColumn<String?>(
      'image_slug', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descLicenseMeta =
      const VerificationMeta('descLicense');
  @override
  late final GeneratedColumn<String?> descLicense = GeneratedColumn<String?>(
      'desc_license', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageLicenseMeta =
      const VerificationMeta('imageLicense');
  @override
  late final GeneratedColumn<String?> imageLicense = GeneratedColumn<String?>(
      'image_license', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _animatedMeta = const VerificationMeta('animated');
  @override
  late final GeneratedColumn<bool?> animated = GeneratedColumn<bool?>(
      'animated', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (animated IN (0, 1))',
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        wgerId,
        name,
        description,
        type,
        flipped,
        imageSlug,
        descLicense,
        imageLicense,
        animated
      ];
  @override
  String get aliasedName => _alias ?? 'exercises';
  @override
  String get actualTableName => 'exercises';
  @override
  VerificationContext validateIntegrity(Insertable<Exercise> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('wger_id')) {
      context.handle(_wgerIdMeta,
          wgerId.isAcceptableOrUnknown(data['wger_id']!, _wgerIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('flipped')) {
      context.handle(_flippedMeta,
          flipped.isAcceptableOrUnknown(data['flipped']!, _flippedMeta));
    }
    if (data.containsKey('image_slug')) {
      context.handle(_imageSlugMeta,
          imageSlug.isAcceptableOrUnknown(data['image_slug']!, _imageSlugMeta));
    }
    if (data.containsKey('desc_license')) {
      context.handle(
          _descLicenseMeta,
          descLicense.isAcceptableOrUnknown(
              data['desc_license']!, _descLicenseMeta));
    } else if (isInserting) {
      context.missing(_descLicenseMeta);
    }
    if (data.containsKey('image_license')) {
      context.handle(
          _imageLicenseMeta,
          imageLicense.isAcceptableOrUnknown(
              data['image_license']!, _imageLicenseMeta));
    }
    if (data.containsKey('animated')) {
      context.handle(_animatedMeta,
          animated.isAcceptableOrUnknown(data['animated']!, _animatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {wgerId};
  @override
  Exercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Exercise.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }

  static TypeConverter<ExerciseType, int> $converter0 =
      const EnumIndexConverter<ExerciseType>(ExerciseType.values);
}

class Workout extends DataClass implements Insertable<Workout> {
  final int id;
  final WorkoutType type;
  final String title;
  final WorkoutCategory category;
  final int countdownDuration;
  final int exerciseDuration;
  final int breakDuration;
  Workout(
      {required this.id,
      required this.type,
      required this.title,
      required this.category,
      required this.countdownDuration,
      required this.exerciseDuration,
      required this.breakDuration});
  factory Workout.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Workout(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      type: $WorkoutsTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']))!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      category: $WorkoutsTable.$converter1.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category']))!,
      countdownDuration: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}countdown_duration'])!,
      exerciseDuration: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}exercise_duration'])!,
      breakDuration: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}break_duration'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $WorkoutsTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type)!);
    }
    map['title'] = Variable<String>(title);
    {
      final converter = $WorkoutsTable.$converter1;
      map['category'] = Variable<int>(converter.mapToSql(category)!);
    }
    map['countdown_duration'] = Variable<int>(countdownDuration);
    map['exercise_duration'] = Variable<int>(exerciseDuration);
    map['break_duration'] = Variable<int>(breakDuration);
    return map;
  }

  WorkoutsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutsCompanion(
      id: Value(id),
      type: Value(type),
      title: Value(title),
      category: Value(category),
      countdownDuration: Value(countdownDuration),
      exerciseDuration: Value(exerciseDuration),
      breakDuration: Value(breakDuration),
    );
  }

  factory Workout.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Workout(
      id: serializer.fromJson<int>(json['id']),
      type: serializer.fromJson<WorkoutType>(json['type']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<WorkoutCategory>(json['category']),
      countdownDuration: serializer.fromJson<int>(json['countdownDuration']),
      exerciseDuration: serializer.fromJson<int>(json['exerciseDuration']),
      breakDuration: serializer.fromJson<int>(json['breakDuration']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type': serializer.toJson<WorkoutType>(type),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<WorkoutCategory>(category),
      'countdownDuration': serializer.toJson<int>(countdownDuration),
      'exerciseDuration': serializer.toJson<int>(exerciseDuration),
      'breakDuration': serializer.toJson<int>(breakDuration),
    };
  }

  Workout copyWith(
          {int? id,
          WorkoutType? type,
          String? title,
          WorkoutCategory? category,
          int? countdownDuration,
          int? exerciseDuration,
          int? breakDuration}) =>
      Workout(
        id: id ?? this.id,
        type: type ?? this.type,
        title: title ?? this.title,
        category: category ?? this.category,
        countdownDuration: countdownDuration ?? this.countdownDuration,
        exerciseDuration: exerciseDuration ?? this.exerciseDuration,
        breakDuration: breakDuration ?? this.breakDuration,
      );
  @override
  String toString() {
    return (StringBuffer('Workout(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('countdownDuration: $countdownDuration, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('breakDuration: $breakDuration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, title, category, countdownDuration,
      exerciseDuration, breakDuration);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Workout &&
          other.id == this.id &&
          other.type == this.type &&
          other.title == this.title &&
          other.category == this.category &&
          other.countdownDuration == this.countdownDuration &&
          other.exerciseDuration == this.exerciseDuration &&
          other.breakDuration == this.breakDuration);
}

class WorkoutsCompanion extends UpdateCompanion<Workout> {
  final Value<int> id;
  final Value<WorkoutType> type;
  final Value<String> title;
  final Value<WorkoutCategory> category;
  final Value<int> countdownDuration;
  final Value<int> exerciseDuration;
  final Value<int> breakDuration;
  const WorkoutsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.countdownDuration = const Value.absent(),
    this.exerciseDuration = const Value.absent(),
    this.breakDuration = const Value.absent(),
  });
  WorkoutsCompanion.insert({
    this.id = const Value.absent(),
    required WorkoutType type,
    required String title,
    required WorkoutCategory category,
    required int countdownDuration,
    required int exerciseDuration,
    required int breakDuration,
  })  : type = Value(type),
        title = Value(title),
        category = Value(category),
        countdownDuration = Value(countdownDuration),
        exerciseDuration = Value(exerciseDuration),
        breakDuration = Value(breakDuration);
  static Insertable<Workout> custom({
    Expression<int>? id,
    Expression<WorkoutType>? type,
    Expression<String>? title,
    Expression<WorkoutCategory>? category,
    Expression<int>? countdownDuration,
    Expression<int>? exerciseDuration,
    Expression<int>? breakDuration,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (countdownDuration != null) 'countdown_duration': countdownDuration,
      if (exerciseDuration != null) 'exercise_duration': exerciseDuration,
      if (breakDuration != null) 'break_duration': breakDuration,
    });
  }

  WorkoutsCompanion copyWith(
      {Value<int>? id,
      Value<WorkoutType>? type,
      Value<String>? title,
      Value<WorkoutCategory>? category,
      Value<int>? countdownDuration,
      Value<int>? exerciseDuration,
      Value<int>? breakDuration}) {
    return WorkoutsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      category: category ?? this.category,
      countdownDuration: countdownDuration ?? this.countdownDuration,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      breakDuration: breakDuration ?? this.breakDuration,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      final converter = $WorkoutsTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type.value)!);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      final converter = $WorkoutsTable.$converter1;
      map['category'] = Variable<int>(converter.mapToSql(category.value)!);
    }
    if (countdownDuration.present) {
      map['countdown_duration'] = Variable<int>(countdownDuration.value);
    }
    if (exerciseDuration.present) {
      map['exercise_duration'] = Variable<int>(exerciseDuration.value);
    }
    if (breakDuration.present) {
      map['break_duration'] = Variable<int>(breakDuration.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('countdownDuration: $countdownDuration, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('breakDuration: $breakDuration')
          ..write(')'))
        .toString();
  }
}

class $WorkoutsTable extends Workouts with TableInfo<$WorkoutsTable, Workout> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<WorkoutType, int?> type =
      GeneratedColumn<int?>('type', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<WorkoutType>($WorkoutsTable.$converter0);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumnWithTypeConverter<WorkoutCategory, int?> category =
      GeneratedColumn<int?>('category', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<WorkoutCategory>($WorkoutsTable.$converter1);
  final VerificationMeta _countdownDurationMeta =
      const VerificationMeta('countdownDuration');
  @override
  late final GeneratedColumn<int?> countdownDuration = GeneratedColumn<int?>(
      'countdown_duration', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _exerciseDurationMeta =
      const VerificationMeta('exerciseDuration');
  @override
  late final GeneratedColumn<int?> exerciseDuration = GeneratedColumn<int?>(
      'exercise_duration', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _breakDurationMeta =
      const VerificationMeta('breakDuration');
  @override
  late final GeneratedColumn<int?> breakDuration = GeneratedColumn<int?>(
      'break_duration', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        type,
        title,
        category,
        countdownDuration,
        exerciseDuration,
        breakDuration
      ];
  @override
  String get aliasedName => _alias ?? 'workouts';
  @override
  String get actualTableName => 'workouts';
  @override
  VerificationContext validateIntegrity(Insertable<Workout> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    context.handle(_categoryMeta, const VerificationResult.success());
    if (data.containsKey('countdown_duration')) {
      context.handle(
          _countdownDurationMeta,
          countdownDuration.isAcceptableOrUnknown(
              data['countdown_duration']!, _countdownDurationMeta));
    } else if (isInserting) {
      context.missing(_countdownDurationMeta);
    }
    if (data.containsKey('exercise_duration')) {
      context.handle(
          _exerciseDurationMeta,
          exerciseDuration.isAcceptableOrUnknown(
              data['exercise_duration']!, _exerciseDurationMeta));
    } else if (isInserting) {
      context.missing(_exerciseDurationMeta);
    }
    if (data.containsKey('break_duration')) {
      context.handle(
          _breakDurationMeta,
          breakDuration.isAcceptableOrUnknown(
              data['break_duration']!, _breakDurationMeta));
    } else if (isInserting) {
      context.missing(_breakDurationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Workout map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Workout.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $WorkoutsTable createAlias(String alias) {
    return $WorkoutsTable(attachedDatabase, alias);
  }

  static TypeConverter<WorkoutType, int> $converter0 =
      const EnumIndexConverter<WorkoutType>(WorkoutType.values);
  static TypeConverter<WorkoutCategory, int> $converter1 =
      const EnumIndexConverter<WorkoutCategory>(WorkoutCategory.values);
}

class WorkoutExercise extends DataClass implements Insertable<WorkoutExercise> {
  final int workoutId;
  final int orderPosition;
  final int exercise;
  final int? exerciseDuration;
  final int? breakDuration;
  WorkoutExercise(
      {required this.workoutId,
      required this.orderPosition,
      required this.exercise,
      this.exerciseDuration,
      this.breakDuration});
  factory WorkoutExercise.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return WorkoutExercise(
      workoutId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}workout_id'])!,
      orderPosition: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_position'])!,
      exercise: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}exercise'])!,
      exerciseDuration: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}exercise_duration']),
      breakDuration: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}break_duration']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['workout_id'] = Variable<int>(workoutId);
    map['order_position'] = Variable<int>(orderPosition);
    map['exercise'] = Variable<int>(exercise);
    if (!nullToAbsent || exerciseDuration != null) {
      map['exercise_duration'] = Variable<int?>(exerciseDuration);
    }
    if (!nullToAbsent || breakDuration != null) {
      map['break_duration'] = Variable<int?>(breakDuration);
    }
    return map;
  }

  WorkoutExercisesCompanion toCompanion(bool nullToAbsent) {
    return WorkoutExercisesCompanion(
      workoutId: Value(workoutId),
      orderPosition: Value(orderPosition),
      exercise: Value(exercise),
      exerciseDuration: exerciseDuration == null && nullToAbsent
          ? const Value.absent()
          : Value(exerciseDuration),
      breakDuration: breakDuration == null && nullToAbsent
          ? const Value.absent()
          : Value(breakDuration),
    );
  }

  factory WorkoutExercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutExercise(
      workoutId: serializer.fromJson<int>(json['workoutId']),
      orderPosition: serializer.fromJson<int>(json['orderPosition']),
      exercise: serializer.fromJson<int>(json['exercise']),
      exerciseDuration: serializer.fromJson<int?>(json['exerciseDuration']),
      breakDuration: serializer.fromJson<int?>(json['breakDuration']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'workoutId': serializer.toJson<int>(workoutId),
      'orderPosition': serializer.toJson<int>(orderPosition),
      'exercise': serializer.toJson<int>(exercise),
      'exerciseDuration': serializer.toJson<int?>(exerciseDuration),
      'breakDuration': serializer.toJson<int?>(breakDuration),
    };
  }

  WorkoutExercise copyWith(
          {int? workoutId,
          int? orderPosition,
          int? exercise,
          int? exerciseDuration,
          int? breakDuration}) =>
      WorkoutExercise(
        workoutId: workoutId ?? this.workoutId,
        orderPosition: orderPosition ?? this.orderPosition,
        exercise: exercise ?? this.exercise,
        exerciseDuration: exerciseDuration ?? this.exerciseDuration,
        breakDuration: breakDuration ?? this.breakDuration,
      );
  @override
  String toString() {
    return (StringBuffer('WorkoutExercise(')
          ..write('workoutId: $workoutId, ')
          ..write('orderPosition: $orderPosition, ')
          ..write('exercise: $exercise, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('breakDuration: $breakDuration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      workoutId, orderPosition, exercise, exerciseDuration, breakDuration);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutExercise &&
          other.workoutId == this.workoutId &&
          other.orderPosition == this.orderPosition &&
          other.exercise == this.exercise &&
          other.exerciseDuration == this.exerciseDuration &&
          other.breakDuration == this.breakDuration);
}

class WorkoutExercisesCompanion extends UpdateCompanion<WorkoutExercise> {
  final Value<int> workoutId;
  final Value<int> orderPosition;
  final Value<int> exercise;
  final Value<int?> exerciseDuration;
  final Value<int?> breakDuration;
  const WorkoutExercisesCompanion({
    this.workoutId = const Value.absent(),
    this.orderPosition = const Value.absent(),
    this.exercise = const Value.absent(),
    this.exerciseDuration = const Value.absent(),
    this.breakDuration = const Value.absent(),
  });
  WorkoutExercisesCompanion.insert({
    required int workoutId,
    required int orderPosition,
    required int exercise,
    this.exerciseDuration = const Value.absent(),
    this.breakDuration = const Value.absent(),
  })  : workoutId = Value(workoutId),
        orderPosition = Value(orderPosition),
        exercise = Value(exercise);
  static Insertable<WorkoutExercise> custom({
    Expression<int>? workoutId,
    Expression<int>? orderPosition,
    Expression<int>? exercise,
    Expression<int?>? exerciseDuration,
    Expression<int?>? breakDuration,
  }) {
    return RawValuesInsertable({
      if (workoutId != null) 'workout_id': workoutId,
      if (orderPosition != null) 'order_position': orderPosition,
      if (exercise != null) 'exercise': exercise,
      if (exerciseDuration != null) 'exercise_duration': exerciseDuration,
      if (breakDuration != null) 'break_duration': breakDuration,
    });
  }

  WorkoutExercisesCompanion copyWith(
      {Value<int>? workoutId,
      Value<int>? orderPosition,
      Value<int>? exercise,
      Value<int?>? exerciseDuration,
      Value<int?>? breakDuration}) {
    return WorkoutExercisesCompanion(
      workoutId: workoutId ?? this.workoutId,
      orderPosition: orderPosition ?? this.orderPosition,
      exercise: exercise ?? this.exercise,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      breakDuration: breakDuration ?? this.breakDuration,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (workoutId.present) {
      map['workout_id'] = Variable<int>(workoutId.value);
    }
    if (orderPosition.present) {
      map['order_position'] = Variable<int>(orderPosition.value);
    }
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (exerciseDuration.present) {
      map['exercise_duration'] = Variable<int?>(exerciseDuration.value);
    }
    if (breakDuration.present) {
      map['break_duration'] = Variable<int?>(breakDuration.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutExercisesCompanion(')
          ..write('workoutId: $workoutId, ')
          ..write('orderPosition: $orderPosition, ')
          ..write('exercise: $exercise, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('breakDuration: $breakDuration')
          ..write(')'))
        .toString();
  }
}

class $WorkoutExercisesTable extends WorkoutExercises
    with TableInfo<$WorkoutExercisesTable, WorkoutExercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutExercisesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _workoutIdMeta = const VerificationMeta('workoutId');
  @override
  late final GeneratedColumn<int?> workoutId = GeneratedColumn<int?>(
      'workout_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _orderPositionMeta =
      const VerificationMeta('orderPosition');
  @override
  late final GeneratedColumn<int?> orderPosition = GeneratedColumn<int?>(
      'order_position', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _exerciseMeta = const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int?> exercise = GeneratedColumn<int?>(
      'exercise', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _exerciseDurationMeta =
      const VerificationMeta('exerciseDuration');
  @override
  late final GeneratedColumn<int?> exerciseDuration = GeneratedColumn<int?>(
      'exercise_duration', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _breakDurationMeta =
      const VerificationMeta('breakDuration');
  @override
  late final GeneratedColumn<int?> breakDuration = GeneratedColumn<int?>(
      'break_duration', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [workoutId, orderPosition, exercise, exerciseDuration, breakDuration];
  @override
  String get aliasedName => _alias ?? 'workout_exercises';
  @override
  String get actualTableName => 'workout_exercises';
  @override
  VerificationContext validateIntegrity(Insertable<WorkoutExercise> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('workout_id')) {
      context.handle(_workoutIdMeta,
          workoutId.isAcceptableOrUnknown(data['workout_id']!, _workoutIdMeta));
    } else if (isInserting) {
      context.missing(_workoutIdMeta);
    }
    if (data.containsKey('order_position')) {
      context.handle(
          _orderPositionMeta,
          orderPosition.isAcceptableOrUnknown(
              data['order_position']!, _orderPositionMeta));
    } else if (isInserting) {
      context.missing(_orderPositionMeta);
    }
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exercise.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    if (data.containsKey('exercise_duration')) {
      context.handle(
          _exerciseDurationMeta,
          exerciseDuration.isAcceptableOrUnknown(
              data['exercise_duration']!, _exerciseDurationMeta));
    }
    if (data.containsKey('break_duration')) {
      context.handle(
          _breakDurationMeta,
          breakDuration.isAcceptableOrUnknown(
              data['break_duration']!, _breakDurationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {workoutId, orderPosition};
  @override
  WorkoutExercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    return WorkoutExercise.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $WorkoutExercisesTable createAlias(String alias) {
    return $WorkoutExercisesTable(attachedDatabase, alias);
  }
}

class WorkoutRecord extends DataClass implements Insertable<WorkoutRecord> {
  final int id;
  final String title;
  final WorkoutCategory category;
  final DateTime workoutStart;
  WorkoutRecord(
      {required this.id,
      required this.title,
      required this.category,
      required this.workoutStart});
  factory WorkoutRecord.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return WorkoutRecord(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      category: $WorkoutRecordsTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category']))!,
      workoutStart: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}workout_start'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    {
      final converter = $WorkoutRecordsTable.$converter0;
      map['category'] = Variable<int>(converter.mapToSql(category)!);
    }
    map['workout_start'] = Variable<DateTime>(workoutStart);
    return map;
  }

  WorkoutRecordsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutRecordsCompanion(
      id: Value(id),
      title: Value(title),
      category: Value(category),
      workoutStart: Value(workoutStart),
    );
  }

  factory WorkoutRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutRecord(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<WorkoutCategory>(json['category']),
      workoutStart: serializer.fromJson<DateTime>(json['workoutStart']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<WorkoutCategory>(category),
      'workoutStart': serializer.toJson<DateTime>(workoutStart),
    };
  }

  WorkoutRecord copyWith(
          {int? id,
          String? title,
          WorkoutCategory? category,
          DateTime? workoutStart}) =>
      WorkoutRecord(
        id: id ?? this.id,
        title: title ?? this.title,
        category: category ?? this.category,
        workoutStart: workoutStart ?? this.workoutStart,
      );
  @override
  String toString() {
    return (StringBuffer('WorkoutRecord(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('workoutStart: $workoutStart')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, category, workoutStart);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutRecord &&
          other.id == this.id &&
          other.title == this.title &&
          other.category == this.category &&
          other.workoutStart == this.workoutStart);
}

class WorkoutRecordsCompanion extends UpdateCompanion<WorkoutRecord> {
  final Value<int> id;
  final Value<String> title;
  final Value<WorkoutCategory> category;
  final Value<DateTime> workoutStart;
  const WorkoutRecordsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.workoutStart = const Value.absent(),
  });
  WorkoutRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required WorkoutCategory category,
    required DateTime workoutStart,
  })  : title = Value(title),
        category = Value(category),
        workoutStart = Value(workoutStart);
  static Insertable<WorkoutRecord> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<WorkoutCategory>? category,
    Expression<DateTime>? workoutStart,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (workoutStart != null) 'workout_start': workoutStart,
    });
  }

  WorkoutRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<WorkoutCategory>? category,
      Value<DateTime>? workoutStart}) {
    return WorkoutRecordsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      category: category ?? this.category,
      workoutStart: workoutStart ?? this.workoutStart,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      final converter = $WorkoutRecordsTable.$converter0;
      map['category'] = Variable<int>(converter.mapToSql(category.value)!);
    }
    if (workoutStart.present) {
      map['workout_start'] = Variable<DateTime>(workoutStart.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutRecordsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('workoutStart: $workoutStart')
          ..write(')'))
        .toString();
  }
}

class $WorkoutRecordsTable extends WorkoutRecords
    with TableInfo<$WorkoutRecordsTable, WorkoutRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutRecordsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumnWithTypeConverter<WorkoutCategory, int?> category =
      GeneratedColumn<int?>('category', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<WorkoutCategory>($WorkoutRecordsTable.$converter0);
  final VerificationMeta _workoutStartMeta =
      const VerificationMeta('workoutStart');
  @override
  late final GeneratedColumn<DateTime?> workoutStart =
      GeneratedColumn<DateTime?>('workout_start', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title, category, workoutStart];
  @override
  String get aliasedName => _alias ?? 'workout_records';
  @override
  String get actualTableName => 'workout_records';
  @override
  VerificationContext validateIntegrity(Insertable<WorkoutRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    context.handle(_categoryMeta, const VerificationResult.success());
    if (data.containsKey('workout_start')) {
      context.handle(
          _workoutStartMeta,
          workoutStart.isAcceptableOrUnknown(
              data['workout_start']!, _workoutStartMeta));
    } else if (isInserting) {
      context.missing(_workoutStartMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    return WorkoutRecord.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $WorkoutRecordsTable createAlias(String alias) {
    return $WorkoutRecordsTable(attachedDatabase, alias);
  }

  static TypeConverter<WorkoutCategory, int> $converter0 =
      const EnumIndexConverter<WorkoutCategory>(WorkoutCategory.values);
}

class WorkoutExerciseRecord extends DataClass
    implements Insertable<WorkoutExerciseRecord> {
  final int workoutRecordId;
  final int orderPosition;
  final int exercise;
  final int exerciseDuration;
  final int completedDuration;
  WorkoutExerciseRecord(
      {required this.workoutRecordId,
      required this.orderPosition,
      required this.exercise,
      required this.exerciseDuration,
      required this.completedDuration});
  factory WorkoutExerciseRecord.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return WorkoutExerciseRecord(
      workoutRecordId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}workout_record_id'])!,
      orderPosition: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_position'])!,
      exercise: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}exercise'])!,
      exerciseDuration: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}exercise_duration'])!,
      completedDuration: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}completed_duration'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['workout_record_id'] = Variable<int>(workoutRecordId);
    map['order_position'] = Variable<int>(orderPosition);
    map['exercise'] = Variable<int>(exercise);
    map['exercise_duration'] = Variable<int>(exerciseDuration);
    map['completed_duration'] = Variable<int>(completedDuration);
    return map;
  }

  WorkoutExerciseRecordsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutExerciseRecordsCompanion(
      workoutRecordId: Value(workoutRecordId),
      orderPosition: Value(orderPosition),
      exercise: Value(exercise),
      exerciseDuration: Value(exerciseDuration),
      completedDuration: Value(completedDuration),
    );
  }

  factory WorkoutExerciseRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutExerciseRecord(
      workoutRecordId: serializer.fromJson<int>(json['workoutRecordId']),
      orderPosition: serializer.fromJson<int>(json['orderPosition']),
      exercise: serializer.fromJson<int>(json['exercise']),
      exerciseDuration: serializer.fromJson<int>(json['exerciseDuration']),
      completedDuration: serializer.fromJson<int>(json['completedDuration']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'workoutRecordId': serializer.toJson<int>(workoutRecordId),
      'orderPosition': serializer.toJson<int>(orderPosition),
      'exercise': serializer.toJson<int>(exercise),
      'exerciseDuration': serializer.toJson<int>(exerciseDuration),
      'completedDuration': serializer.toJson<int>(completedDuration),
    };
  }

  WorkoutExerciseRecord copyWith(
          {int? workoutRecordId,
          int? orderPosition,
          int? exercise,
          int? exerciseDuration,
          int? completedDuration}) =>
      WorkoutExerciseRecord(
        workoutRecordId: workoutRecordId ?? this.workoutRecordId,
        orderPosition: orderPosition ?? this.orderPosition,
        exercise: exercise ?? this.exercise,
        exerciseDuration: exerciseDuration ?? this.exerciseDuration,
        completedDuration: completedDuration ?? this.completedDuration,
      );
  @override
  String toString() {
    return (StringBuffer('WorkoutExerciseRecord(')
          ..write('workoutRecordId: $workoutRecordId, ')
          ..write('orderPosition: $orderPosition, ')
          ..write('exercise: $exercise, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('completedDuration: $completedDuration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(workoutRecordId, orderPosition, exercise,
      exerciseDuration, completedDuration);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutExerciseRecord &&
          other.workoutRecordId == this.workoutRecordId &&
          other.orderPosition == this.orderPosition &&
          other.exercise == this.exercise &&
          other.exerciseDuration == this.exerciseDuration &&
          other.completedDuration == this.completedDuration);
}

class WorkoutExerciseRecordsCompanion
    extends UpdateCompanion<WorkoutExerciseRecord> {
  final Value<int> workoutRecordId;
  final Value<int> orderPosition;
  final Value<int> exercise;
  final Value<int> exerciseDuration;
  final Value<int> completedDuration;
  const WorkoutExerciseRecordsCompanion({
    this.workoutRecordId = const Value.absent(),
    this.orderPosition = const Value.absent(),
    this.exercise = const Value.absent(),
    this.exerciseDuration = const Value.absent(),
    this.completedDuration = const Value.absent(),
  });
  WorkoutExerciseRecordsCompanion.insert({
    required int workoutRecordId,
    required int orderPosition,
    required int exercise,
    required int exerciseDuration,
    required int completedDuration,
  })  : workoutRecordId = Value(workoutRecordId),
        orderPosition = Value(orderPosition),
        exercise = Value(exercise),
        exerciseDuration = Value(exerciseDuration),
        completedDuration = Value(completedDuration);
  static Insertable<WorkoutExerciseRecord> custom({
    Expression<int>? workoutRecordId,
    Expression<int>? orderPosition,
    Expression<int>? exercise,
    Expression<int>? exerciseDuration,
    Expression<int>? completedDuration,
  }) {
    return RawValuesInsertable({
      if (workoutRecordId != null) 'workout_record_id': workoutRecordId,
      if (orderPosition != null) 'order_position': orderPosition,
      if (exercise != null) 'exercise': exercise,
      if (exerciseDuration != null) 'exercise_duration': exerciseDuration,
      if (completedDuration != null) 'completed_duration': completedDuration,
    });
  }

  WorkoutExerciseRecordsCompanion copyWith(
      {Value<int>? workoutRecordId,
      Value<int>? orderPosition,
      Value<int>? exercise,
      Value<int>? exerciseDuration,
      Value<int>? completedDuration}) {
    return WorkoutExerciseRecordsCompanion(
      workoutRecordId: workoutRecordId ?? this.workoutRecordId,
      orderPosition: orderPosition ?? this.orderPosition,
      exercise: exercise ?? this.exercise,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      completedDuration: completedDuration ?? this.completedDuration,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (workoutRecordId.present) {
      map['workout_record_id'] = Variable<int>(workoutRecordId.value);
    }
    if (orderPosition.present) {
      map['order_position'] = Variable<int>(orderPosition.value);
    }
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (exerciseDuration.present) {
      map['exercise_duration'] = Variable<int>(exerciseDuration.value);
    }
    if (completedDuration.present) {
      map['completed_duration'] = Variable<int>(completedDuration.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutExerciseRecordsCompanion(')
          ..write('workoutRecordId: $workoutRecordId, ')
          ..write('orderPosition: $orderPosition, ')
          ..write('exercise: $exercise, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('completedDuration: $completedDuration')
          ..write(')'))
        .toString();
  }
}

class $WorkoutExerciseRecordsTable extends WorkoutExerciseRecords
    with TableInfo<$WorkoutExerciseRecordsTable, WorkoutExerciseRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutExerciseRecordsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _workoutRecordIdMeta =
      const VerificationMeta('workoutRecordId');
  @override
  late final GeneratedColumn<int?> workoutRecordId = GeneratedColumn<int?>(
      'workout_record_id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _orderPositionMeta =
      const VerificationMeta('orderPosition');
  @override
  late final GeneratedColumn<int?> orderPosition = GeneratedColumn<int?>(
      'order_position', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _exerciseMeta = const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int?> exercise = GeneratedColumn<int?>(
      'exercise', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _exerciseDurationMeta =
      const VerificationMeta('exerciseDuration');
  @override
  late final GeneratedColumn<int?> exerciseDuration = GeneratedColumn<int?>(
      'exercise_duration', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _completedDurationMeta =
      const VerificationMeta('completedDuration');
  @override
  late final GeneratedColumn<int?> completedDuration = GeneratedColumn<int?>(
      'completed_duration', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        workoutRecordId,
        orderPosition,
        exercise,
        exerciseDuration,
        completedDuration
      ];
  @override
  String get aliasedName => _alias ?? 'workout_exercise_records';
  @override
  String get actualTableName => 'workout_exercise_records';
  @override
  VerificationContext validateIntegrity(
      Insertable<WorkoutExerciseRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('workout_record_id')) {
      context.handle(
          _workoutRecordIdMeta,
          workoutRecordId.isAcceptableOrUnknown(
              data['workout_record_id']!, _workoutRecordIdMeta));
    } else if (isInserting) {
      context.missing(_workoutRecordIdMeta);
    }
    if (data.containsKey('order_position')) {
      context.handle(
          _orderPositionMeta,
          orderPosition.isAcceptableOrUnknown(
              data['order_position']!, _orderPositionMeta));
    } else if (isInserting) {
      context.missing(_orderPositionMeta);
    }
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exercise.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    if (data.containsKey('exercise_duration')) {
      context.handle(
          _exerciseDurationMeta,
          exerciseDuration.isAcceptableOrUnknown(
              data['exercise_duration']!, _exerciseDurationMeta));
    } else if (isInserting) {
      context.missing(_exerciseDurationMeta);
    }
    if (data.containsKey('completed_duration')) {
      context.handle(
          _completedDurationMeta,
          completedDuration.isAcceptableOrUnknown(
              data['completed_duration']!, _completedDurationMeta));
    } else if (isInserting) {
      context.missing(_completedDurationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {workoutRecordId, orderPosition};
  @override
  WorkoutExerciseRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    return WorkoutExerciseRecord.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $WorkoutExerciseRecordsTable createAlias(String alias) {
    return $WorkoutExerciseRecordsTable(attachedDatabase, alias);
  }
}

abstract class _$FeeelDB extends GeneratedDatabase {
  _$FeeelDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ExercisesTable exercises = $ExercisesTable(this);
  late final $WorkoutsTable workouts = $WorkoutsTable(this);
  late final $WorkoutExercisesTable workoutExercises =
      $WorkoutExercisesTable(this);
  late final $WorkoutRecordsTable workoutRecords = $WorkoutRecordsTable(this);
  late final $WorkoutExerciseRecordsTable workoutExerciseRecords =
      $WorkoutExerciseRecordsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        exercises,
        workouts,
        workoutExercises,
        workoutRecords,
        workoutExerciseRecords
      ];
}
