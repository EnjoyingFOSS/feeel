// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Exercise extends DataClass implements Insertable<Exercise> {
  final int id;
  final String name;
  final String? description;
  final int type;
  final bool flipped;
  final bool hasSteps;
  final String? imageSlug;
  final String? descLicense;
  final String? imageLicense;
  final bool animated;
  final int? category;
  Exercise(
      {required this.id,
      required this.name,
      this.description,
      required this.type,
      required this.flipped,
      required this.hasSteps,
      this.imageSlug,
      this.descLicense,
      this.imageLicense,
      required this.animated,
      this.category});
  factory Exercise.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Exercise(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      type: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      flipped: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}flipped'])!,
      hasSteps: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}has_steps'])!,
      imageSlug: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_slug']),
      descLicense: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}desc_license']),
      imageLicense: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_license']),
      animated: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}animated'])!,
      category: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    map['type'] = Variable<int>(type);
    map['flipped'] = Variable<bool>(flipped);
    map['has_steps'] = Variable<bool>(hasSteps);
    if (!nullToAbsent || imageSlug != null) {
      map['image_slug'] = Variable<String?>(imageSlug);
    }
    if (!nullToAbsent || descLicense != null) {
      map['desc_license'] = Variable<String?>(descLicense);
    }
    if (!nullToAbsent || imageLicense != null) {
      map['image_license'] = Variable<String?>(imageLicense);
    }
    map['animated'] = Variable<bool>(animated);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<int?>(category);
    }
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      type: Value(type),
      flipped: Value(flipped),
      hasSteps: Value(hasSteps),
      imageSlug: imageSlug == null && nullToAbsent
          ? const Value.absent()
          : Value(imageSlug),
      descLicense: descLicense == null && nullToAbsent
          ? const Value.absent()
          : Value(descLicense),
      imageLicense: imageLicense == null && nullToAbsent
          ? const Value.absent()
          : Value(imageLicense),
      animated: Value(animated),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  factory Exercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exercise(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      type: serializer.fromJson<int>(json['type']),
      flipped: serializer.fromJson<bool>(json['flipped']),
      hasSteps: serializer.fromJson<bool>(json['hasSteps']),
      imageSlug: serializer.fromJson<String?>(json['imageSlug']),
      descLicense: serializer.fromJson<String?>(json['descLicense']),
      imageLicense: serializer.fromJson<String?>(json['imageLicense']),
      animated: serializer.fromJson<bool>(json['animated']),
      category: serializer.fromJson<int?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'type': serializer.toJson<int>(type),
      'flipped': serializer.toJson<bool>(flipped),
      'hasSteps': serializer.toJson<bool>(hasSteps),
      'imageSlug': serializer.toJson<String?>(imageSlug),
      'descLicense': serializer.toJson<String?>(descLicense),
      'imageLicense': serializer.toJson<String?>(imageLicense),
      'animated': serializer.toJson<bool>(animated),
      'category': serializer.toJson<int?>(category),
    };
  }

  Exercise copyWith(
          {int? id,
          String? name,
          String? description,
          int? type,
          bool? flipped,
          bool? hasSteps,
          String? imageSlug,
          String? descLicense,
          String? imageLicense,
          bool? animated,
          int? category}) =>
      Exercise(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        type: type ?? this.type,
        flipped: flipped ?? this.flipped,
        hasSteps: hasSteps ?? this.hasSteps,
        imageSlug: imageSlug ?? this.imageSlug,
        descLicense: descLicense ?? this.descLicense,
        imageLicense: imageLicense ?? this.imageLicense,
        animated: animated ?? this.animated,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('flipped: $flipped, ')
          ..write('hasSteps: $hasSteps, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('descLicense: $descLicense, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('animated: $animated, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, type, flipped,
      hasSteps, imageSlug, descLicense, imageLicense, animated, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.type == this.type &&
          other.flipped == this.flipped &&
          other.hasSteps == this.hasSteps &&
          other.imageSlug == this.imageSlug &&
          other.descLicense == this.descLicense &&
          other.imageLicense == this.imageLicense &&
          other.animated == this.animated &&
          other.category == this.category);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<int> type;
  final Value<bool> flipped;
  final Value<bool> hasSteps;
  final Value<String?> imageSlug;
  final Value<String?> descLicense;
  final Value<String?> imageLicense;
  final Value<bool> animated;
  final Value<int?> category;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.flipped = const Value.absent(),
    this.hasSteps = const Value.absent(),
    this.imageSlug = const Value.absent(),
    this.descLicense = const Value.absent(),
    this.imageLicense = const Value.absent(),
    this.animated = const Value.absent(),
    this.category = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    required int type,
    this.flipped = const Value.absent(),
    required bool hasSteps,
    this.imageSlug = const Value.absent(),
    this.descLicense = const Value.absent(),
    this.imageLicense = const Value.absent(),
    this.animated = const Value.absent(),
    this.category = const Value.absent(),
  })  : name = Value(name),
        type = Value(type),
        hasSteps = Value(hasSteps);
  static Insertable<Exercise> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String?>? description,
    Expression<int>? type,
    Expression<bool>? flipped,
    Expression<bool>? hasSteps,
    Expression<String?>? imageSlug,
    Expression<String?>? descLicense,
    Expression<String?>? imageLicense,
    Expression<bool>? animated,
    Expression<int?>? category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (flipped != null) 'flipped': flipped,
      if (hasSteps != null) 'has_steps': hasSteps,
      if (imageSlug != null) 'image_slug': imageSlug,
      if (descLicense != null) 'desc_license': descLicense,
      if (imageLicense != null) 'image_license': imageLicense,
      if (animated != null) 'animated': animated,
      if (category != null) 'category': category,
    });
  }

  ExercisesCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String?>? description,
      Value<int>? type,
      Value<bool>? flipped,
      Value<bool>? hasSteps,
      Value<String?>? imageSlug,
      Value<String?>? descLicense,
      Value<String?>? imageLicense,
      Value<bool>? animated,
      Value<int?>? category}) {
    return ExercisesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      flipped: flipped ?? this.flipped,
      hasSteps: hasSteps ?? this.hasSteps,
      imageSlug: imageSlug ?? this.imageSlug,
      descLicense: descLicense ?? this.descLicense,
      imageLicense: imageLicense ?? this.imageLicense,
      animated: animated ?? this.animated,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (flipped.present) {
      map['flipped'] = Variable<bool>(flipped.value);
    }
    if (hasSteps.present) {
      map['has_steps'] = Variable<bool>(hasSteps.value);
    }
    if (imageSlug.present) {
      map['image_slug'] = Variable<String?>(imageSlug.value);
    }
    if (descLicense.present) {
      map['desc_license'] = Variable<String?>(descLicense.value);
    }
    if (imageLicense.present) {
      map['image_license'] = Variable<String?>(imageLicense.value);
    }
    if (animated.present) {
      map['animated'] = Variable<bool>(animated.value);
    }
    if (category.present) {
      map['category'] = Variable<int?>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('flipped: $flipped, ')
          ..write('hasSteps: $hasSteps, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('descLicense: $descLicense, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('animated: $animated, ')
          ..write('category: $category')
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
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
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
  late final GeneratedColumn<int?> type = GeneratedColumn<int?>(
      'type', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _flippedMeta = const VerificationMeta('flipped');
  @override
  late final GeneratedColumn<bool?> flipped = GeneratedColumn<bool?>(
      'flipped', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (flipped IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _hasStepsMeta = const VerificationMeta('hasSteps');
  @override
  late final GeneratedColumn<bool?> hasSteps = GeneratedColumn<bool?>(
      'has_steps', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (has_steps IN (0, 1))');
  final VerificationMeta _imageSlugMeta = const VerificationMeta('imageSlug');
  @override
  late final GeneratedColumn<String?> imageSlug = GeneratedColumn<String?>(
      'image_slug', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descLicenseMeta =
      const VerificationMeta('descLicense');
  @override
  late final GeneratedColumn<String?> descLicense = GeneratedColumn<String?>(
      'desc_license', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
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
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<int?> category = GeneratedColumn<int?>(
      'category', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        type,
        flipped,
        hasSteps,
        imageSlug,
        descLicense,
        imageLicense,
        animated,
        category
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
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
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
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('flipped')) {
      context.handle(_flippedMeta,
          flipped.isAcceptableOrUnknown(data['flipped']!, _flippedMeta));
    }
    if (data.containsKey('has_steps')) {
      context.handle(_hasStepsMeta,
          hasSteps.isAcceptableOrUnknown(data['has_steps']!, _hasStepsMeta));
    } else if (isInserting) {
      context.missing(_hasStepsMeta);
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
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Exercise.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }
}

class ExerciseStep extends DataClass implements Insertable<ExerciseStep> {
  final int exercise;
  final int orderPosition;
  final String? imageSlug;
  final String? voiceHint;
  final int stepDuration;
  ExerciseStep(
      {required this.exercise,
      required this.orderPosition,
      this.imageSlug,
      this.voiceHint,
      required this.stepDuration});
  factory ExerciseStep.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ExerciseStep(
      exercise: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}exercise'])!,
      orderPosition: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_position'])!,
      imageSlug: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_slug']),
      voiceHint: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}voice_hint']),
      stepDuration: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}step_duration'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise'] = Variable<int>(exercise);
    map['order_position'] = Variable<int>(orderPosition);
    if (!nullToAbsent || imageSlug != null) {
      map['image_slug'] = Variable<String?>(imageSlug);
    }
    if (!nullToAbsent || voiceHint != null) {
      map['voice_hint'] = Variable<String?>(voiceHint);
    }
    map['step_duration'] = Variable<int>(stepDuration);
    return map;
  }

  ExerciseStepsCompanion toCompanion(bool nullToAbsent) {
    return ExerciseStepsCompanion(
      exercise: Value(exercise),
      orderPosition: Value(orderPosition),
      imageSlug: imageSlug == null && nullToAbsent
          ? const Value.absent()
          : Value(imageSlug),
      voiceHint: voiceHint == null && nullToAbsent
          ? const Value.absent()
          : Value(voiceHint),
      stepDuration: Value(stepDuration),
    );
  }

  factory ExerciseStep.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseStep(
      exercise: serializer.fromJson<int>(json['exercise']),
      orderPosition: serializer.fromJson<int>(json['orderPosition']),
      imageSlug: serializer.fromJson<String?>(json['imageSlug']),
      voiceHint: serializer.fromJson<String?>(json['voiceHint']),
      stepDuration: serializer.fromJson<int>(json['stepDuration']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exercise': serializer.toJson<int>(exercise),
      'orderPosition': serializer.toJson<int>(orderPosition),
      'imageSlug': serializer.toJson<String?>(imageSlug),
      'voiceHint': serializer.toJson<String?>(voiceHint),
      'stepDuration': serializer.toJson<int>(stepDuration),
    };
  }

  ExerciseStep copyWith(
          {int? exercise,
          int? orderPosition,
          String? imageSlug,
          String? voiceHint,
          int? stepDuration}) =>
      ExerciseStep(
        exercise: exercise ?? this.exercise,
        orderPosition: orderPosition ?? this.orderPosition,
        imageSlug: imageSlug ?? this.imageSlug,
        voiceHint: voiceHint ?? this.voiceHint,
        stepDuration: stepDuration ?? this.stepDuration,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseStep(')
          ..write('exercise: $exercise, ')
          ..write('orderPosition: $orderPosition, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('voiceHint: $voiceHint, ')
          ..write('stepDuration: $stepDuration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(exercise, orderPosition, imageSlug, voiceHint, stepDuration);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseStep &&
          other.exercise == this.exercise &&
          other.orderPosition == this.orderPosition &&
          other.imageSlug == this.imageSlug &&
          other.voiceHint == this.voiceHint &&
          other.stepDuration == this.stepDuration);
}

class ExerciseStepsCompanion extends UpdateCompanion<ExerciseStep> {
  final Value<int> exercise;
  final Value<int> orderPosition;
  final Value<String?> imageSlug;
  final Value<String?> voiceHint;
  final Value<int> stepDuration;
  const ExerciseStepsCompanion({
    this.exercise = const Value.absent(),
    this.orderPosition = const Value.absent(),
    this.imageSlug = const Value.absent(),
    this.voiceHint = const Value.absent(),
    this.stepDuration = const Value.absent(),
  });
  ExerciseStepsCompanion.insert({
    required int exercise,
    required int orderPosition,
    this.imageSlug = const Value.absent(),
    this.voiceHint = const Value.absent(),
    required int stepDuration,
  })  : exercise = Value(exercise),
        orderPosition = Value(orderPosition),
        stepDuration = Value(stepDuration);
  static Insertable<ExerciseStep> custom({
    Expression<int>? exercise,
    Expression<int>? orderPosition,
    Expression<String?>? imageSlug,
    Expression<String?>? voiceHint,
    Expression<int>? stepDuration,
  }) {
    return RawValuesInsertable({
      if (exercise != null) 'exercise': exercise,
      if (orderPosition != null) 'order_position': orderPosition,
      if (imageSlug != null) 'image_slug': imageSlug,
      if (voiceHint != null) 'voice_hint': voiceHint,
      if (stepDuration != null) 'step_duration': stepDuration,
    });
  }

  ExerciseStepsCompanion copyWith(
      {Value<int>? exercise,
      Value<int>? orderPosition,
      Value<String?>? imageSlug,
      Value<String?>? voiceHint,
      Value<int>? stepDuration}) {
    return ExerciseStepsCompanion(
      exercise: exercise ?? this.exercise,
      orderPosition: orderPosition ?? this.orderPosition,
      imageSlug: imageSlug ?? this.imageSlug,
      voiceHint: voiceHint ?? this.voiceHint,
      stepDuration: stepDuration ?? this.stepDuration,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (orderPosition.present) {
      map['order_position'] = Variable<int>(orderPosition.value);
    }
    if (imageSlug.present) {
      map['image_slug'] = Variable<String?>(imageSlug.value);
    }
    if (voiceHint.present) {
      map['voice_hint'] = Variable<String?>(voiceHint.value);
    }
    if (stepDuration.present) {
      map['step_duration'] = Variable<int>(stepDuration.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseStepsCompanion(')
          ..write('exercise: $exercise, ')
          ..write('orderPosition: $orderPosition, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('voiceHint: $voiceHint, ')
          ..write('stepDuration: $stepDuration')
          ..write(')'))
        .toString();
  }
}

class $ExerciseStepsTable extends ExerciseSteps
    with TableInfo<$ExerciseStepsTable, ExerciseStep> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseStepsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _exerciseMeta = const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int?> exerciseId = GeneratedColumn<int?>(
      'exercise', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _orderPositionMeta =
      const VerificationMeta('orderPosition');
  @override
  late final GeneratedColumn<int?> orderPosition = GeneratedColumn<int?>(
      'order_position', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _imageSlugMeta = const VerificationMeta('imageSlug');
  @override
  late final GeneratedColumn<String?> imageSlug = GeneratedColumn<String?>(
      'image_slug', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _voiceHintMeta = const VerificationMeta('voiceHint');
  @override
  late final GeneratedColumn<String?> voiceHint = GeneratedColumn<String?>(
      'voice_hint', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _stepDurationMeta =
      const VerificationMeta('stepDuration');
  @override
  late final GeneratedColumn<int?> stepDuration = GeneratedColumn<int?>(
      'step_duration', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [exerciseId, orderPosition, imageSlug, voiceHint, stepDuration];
  @override
  String get aliasedName => _alias ?? 'exercise_steps';
  @override
  String get actualTableName => 'exercise_steps';
  @override
  VerificationContext validateIntegrity(Insertable<ExerciseStep> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exerciseId.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    if (data.containsKey('order_position')) {
      context.handle(
          _orderPositionMeta,
          orderPosition.isAcceptableOrUnknown(
              data['order_position']!, _orderPositionMeta));
    } else if (isInserting) {
      context.missing(_orderPositionMeta);
    }
    if (data.containsKey('image_slug')) {
      context.handle(_imageSlugMeta,
          imageSlug.isAcceptableOrUnknown(data['image_slug']!, _imageSlugMeta));
    }
    if (data.containsKey('voice_hint')) {
      context.handle(_voiceHintMeta,
          voiceHint.isAcceptableOrUnknown(data['voice_hint']!, _voiceHintMeta));
    }
    if (data.containsKey('step_duration')) {
      context.handle(
          _stepDurationMeta,
          stepDuration.isAcceptableOrUnknown(
              data['step_duration']!, _stepDurationMeta));
    } else if (isInserting) {
      context.missing(_stepDurationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exerciseId, orderPosition};
  @override
  ExerciseStep map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ExerciseStep.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExerciseStepsTable createAlias(String alias) {
    return $ExerciseStepsTable(attachedDatabase, alias);
  }
}

class Workout extends DataClass implements Insertable<Workout> {
  final int id;
  final int type;
  final String title;
  final int category;
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
      type: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      category: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
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
    map['type'] = Variable<int>(type);
    map['title'] = Variable<String>(title);
    map['category'] = Variable<int>(category);
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
      type: serializer.fromJson<int>(json['type']),
      title: serializer.fromJson<String>(json['title']),
      category: serializer.fromJson<int>(json['category']),
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
      'type': serializer.toJson<int>(type),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<int>(category),
      'countdownDuration': serializer.toJson<int>(countdownDuration),
      'exerciseDuration': serializer.toJson<int>(exerciseDuration),
      'breakDuration': serializer.toJson<int>(breakDuration),
    };
  }

  Workout copyWith(
          {int? id,
          int? type,
          String? title,
          int? category,
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
  final Value<int> type;
  final Value<String> title;
  final Value<int> category;
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
    required int type,
    required String title,
    required int category,
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
    Expression<int>? type,
    Expression<String>? title,
    Expression<int>? category,
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
      Value<int>? type,
      Value<String>? title,
      Value<int>? category,
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
      map['type'] = Variable<int>(type.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
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
  late final GeneratedColumn<int?> type = GeneratedColumn<int?>(
      'type', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<int?> category = GeneratedColumn<int?>(
      'category', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
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
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
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

abstract class _$FeeelDB extends GeneratedDatabase {
  _$FeeelDB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ExercisesTable exercises = $ExercisesTable(this);
  late final $ExerciseStepsTable exerciseSteps = $ExerciseStepsTable(this);
  late final $WorkoutsTable workouts = $WorkoutsTable(this);
  late final $WorkoutExercisesTable workoutExercises =
      $WorkoutExercisesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [exercises, exerciseSteps, workouts, workoutExercises];
}
