// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, Exercise> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExercisesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _wgerIdMeta = const VerificationMeta('wgerId');
  @override
  late final GeneratedColumn<int> wgerId = GeneratedColumn<int>(
      'wger_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _aliasesMeta =
      const VerificationMeta('aliases');
  @override
  late final GeneratedColumn<String> aliases = GeneratedColumn<String>(
      'aliases', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumnWithTypeConverter<ExerciseCategory, int> category =
      GeneratedColumn<int>('category', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<ExerciseCategory>($ExercisesTable.$convertercategory);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descLicenseMeta =
      const VerificationMeta('descLicense');
  @override
  late final GeneratedColumnWithTypeConverter<License, String> descLicense =
      GeneratedColumn<String>('desc_license', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<License>($ExercisesTable.$converterdescLicense);
  static const VerificationMeta _descAuthorsMeta =
      const VerificationMeta('descAuthors');
  @override
  late final GeneratedColumn<String> descAuthors = GeneratedColumn<String>(
      'desc_authors', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageSlugMeta =
      const VerificationMeta('imageSlug');
  @override
  late final GeneratedColumn<String> imageSlug = GeneratedColumn<String>(
      'image_slug', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<ExerciseType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<ExerciseType>($ExercisesTable.$convertertype);
  static const VerificationMeta _flippedMeta =
      const VerificationMeta('flipped');
  @override
  late final GeneratedColumn<bool> flipped =
      GeneratedColumn<bool>('flipped', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("flipped" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _animatedMeta =
      const VerificationMeta('animated');
  @override
  late final GeneratedColumn<bool> animated =
      GeneratedColumn<bool>('animated', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("animated" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _imageLicenseMeta =
      const VerificationMeta('imageLicense');
  @override
  late final GeneratedColumn<String> imageLicense = GeneratedColumn<String>(
      'image_license', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _variationGroupMeta =
      const VerificationMeta('variationGroup');
  @override
  late final GeneratedColumn<int> variationGroup = GeneratedColumn<int>(
      'variation_group', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        wgerId,
        name,
        aliases,
        category,
        description,
        notes,
        descLicense,
        descAuthors,
        imageSlug,
        type,
        flipped,
        animated,
        imageLicense,
        variationGroup
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
    if (data.containsKey('aliases')) {
      context.handle(_aliasesMeta,
          aliases.isAcceptableOrUnknown(data['aliases']!, _aliasesMeta));
    }
    context.handle(_categoryMeta, const VerificationResult.success());
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    context.handle(_descLicenseMeta, const VerificationResult.success());
    if (data.containsKey('desc_authors')) {
      context.handle(
          _descAuthorsMeta,
          descAuthors.isAcceptableOrUnknown(
              data['desc_authors']!, _descAuthorsMeta));
    } else if (isInserting) {
      context.missing(_descAuthorsMeta);
    }
    if (data.containsKey('image_slug')) {
      context.handle(_imageSlugMeta,
          imageSlug.isAcceptableOrUnknown(data['image_slug']!, _imageSlugMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('flipped')) {
      context.handle(_flippedMeta,
          flipped.isAcceptableOrUnknown(data['flipped']!, _flippedMeta));
    }
    if (data.containsKey('animated')) {
      context.handle(_animatedMeta,
          animated.isAcceptableOrUnknown(data['animated']!, _animatedMeta));
    }
    if (data.containsKey('image_license')) {
      context.handle(
          _imageLicenseMeta,
          imageLicense.isAcceptableOrUnknown(
              data['image_license']!, _imageLicenseMeta));
    }
    if (data.containsKey('variation_group')) {
      context.handle(
          _variationGroupMeta,
          variationGroup.isAcceptableOrUnknown(
              data['variation_group']!, _variationGroupMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {wgerId};
  @override
  Exercise map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Exercise(
      wgerId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}wger_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      aliases: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}aliases']),
      category: $ExercisesTable.$convertercategory.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])!),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      descLicense: $ExercisesTable.$converterdescLicense.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}desc_license'])!),
      descAuthors: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}desc_authors'])!,
      imageSlug: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_slug']),
      type: $ExercisesTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      flipped: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}flipped'])!,
      animated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}animated'])!,
      imageLicense: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_license']),
      variationGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}variation_group']),
    );
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ExerciseCategory, int, int> $convertercategory =
      const EnumIndexConverter<ExerciseCategory>(ExerciseCategory.values);
  static JsonTypeConverter2<License, String, String> $converterdescLicense =
      const EnumNameConverter<License>(License.values);
  static JsonTypeConverter2<ExerciseType, int, int> $convertertype =
      const EnumIndexConverter<ExerciseType>(ExerciseType.values);
}

class Exercise extends DataClass implements Insertable<Exercise> {
  final int wgerId;
  final String name;
  final String? aliases;

  /// pipe-separated list of aliases
  final ExerciseCategory category;
  final String? description;
  final String? notes;
  final License descLicense;
  final String descAuthors;

  /// pipe-separated list of authors
  final String? imageSlug;
  final ExerciseType type;
  final bool flipped;
  final bool animated;
  final String? imageLicense;
  final int? variationGroup;
  const Exercise(
      {required this.wgerId,
      required this.name,
      this.aliases,
      required this.category,
      this.description,
      this.notes,
      required this.descLicense,
      required this.descAuthors,
      this.imageSlug,
      required this.type,
      required this.flipped,
      required this.animated,
      this.imageLicense,
      this.variationGroup});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['wger_id'] = Variable<int>(wgerId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || aliases != null) {
      map['aliases'] = Variable<String>(aliases);
    }
    {
      final converter = $ExercisesTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    {
      final converter = $ExercisesTable.$converterdescLicense;
      map['desc_license'] = Variable<String>(converter.toSql(descLicense));
    }
    map['desc_authors'] = Variable<String>(descAuthors);
    if (!nullToAbsent || imageSlug != null) {
      map['image_slug'] = Variable<String>(imageSlug);
    }
    {
      final converter = $ExercisesTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['flipped'] = Variable<bool>(flipped);
    map['animated'] = Variable<bool>(animated);
    if (!nullToAbsent || imageLicense != null) {
      map['image_license'] = Variable<String>(imageLicense);
    }
    if (!nullToAbsent || variationGroup != null) {
      map['variation_group'] = Variable<int>(variationGroup);
    }
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      wgerId: Value(wgerId),
      name: Value(name),
      aliases: aliases == null && nullToAbsent
          ? const Value.absent()
          : Value(aliases),
      category: Value(category),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      descLicense: Value(descLicense),
      descAuthors: Value(descAuthors),
      imageSlug: imageSlug == null && nullToAbsent
          ? const Value.absent()
          : Value(imageSlug),
      type: Value(type),
      flipped: Value(flipped),
      animated: Value(animated),
      imageLicense: imageLicense == null && nullToAbsent
          ? const Value.absent()
          : Value(imageLicense),
      variationGroup: variationGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(variationGroup),
    );
  }

  factory Exercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Exercise(
      wgerId: serializer.fromJson<int>(json['wgerId']),
      name: serializer.fromJson<String>(json['name']),
      aliases: serializer.fromJson<String?>(json['aliases']),
      category: $ExercisesTable.$convertercategory
          .fromJson(serializer.fromJson<int>(json['category'])),
      description: serializer.fromJson<String?>(json['description']),
      notes: serializer.fromJson<String?>(json['notes']),
      descLicense: $ExercisesTable.$converterdescLicense
          .fromJson(serializer.fromJson<String>(json['descLicense'])),
      descAuthors: serializer.fromJson<String>(json['descAuthors']),
      imageSlug: serializer.fromJson<String?>(json['imageSlug']),
      type: $ExercisesTable.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
      flipped: serializer.fromJson<bool>(json['flipped']),
      animated: serializer.fromJson<bool>(json['animated']),
      imageLicense: serializer.fromJson<String?>(json['imageLicense']),
      variationGroup: serializer.fromJson<int?>(json['variationGroup']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'wgerId': serializer.toJson<int>(wgerId),
      'name': serializer.toJson<String>(name),
      'aliases': serializer.toJson<String?>(aliases),
      'category': serializer
          .toJson<int>($ExercisesTable.$convertercategory.toJson(category)),
      'description': serializer.toJson<String?>(description),
      'notes': serializer.toJson<String?>(notes),
      'descLicense': serializer.toJson<String>(
          $ExercisesTable.$converterdescLicense.toJson(descLicense)),
      'descAuthors': serializer.toJson<String>(descAuthors),
      'imageSlug': serializer.toJson<String?>(imageSlug),
      'type':
          serializer.toJson<int>($ExercisesTable.$convertertype.toJson(type)),
      'flipped': serializer.toJson<bool>(flipped),
      'animated': serializer.toJson<bool>(animated),
      'imageLicense': serializer.toJson<String?>(imageLicense),
      'variationGroup': serializer.toJson<int?>(variationGroup),
    };
  }

  Exercise copyWith(
          {int? wgerId,
          String? name,
          Value<String?> aliases = const Value.absent(),
          ExerciseCategory? category,
          Value<String?> description = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          License? descLicense,
          String? descAuthors,
          Value<String?> imageSlug = const Value.absent(),
          ExerciseType? type,
          bool? flipped,
          bool? animated,
          Value<String?> imageLicense = const Value.absent(),
          Value<int?> variationGroup = const Value.absent()}) =>
      Exercise(
        wgerId: wgerId ?? this.wgerId,
        name: name ?? this.name,
        aliases: aliases.present ? aliases.value : this.aliases,
        category: category ?? this.category,
        description: description.present ? description.value : this.description,
        notes: notes.present ? notes.value : this.notes,
        descLicense: descLicense ?? this.descLicense,
        descAuthors: descAuthors ?? this.descAuthors,
        imageSlug: imageSlug.present ? imageSlug.value : this.imageSlug,
        type: type ?? this.type,
        flipped: flipped ?? this.flipped,
        animated: animated ?? this.animated,
        imageLicense:
            imageLicense.present ? imageLicense.value : this.imageLicense,
        variationGroup:
            variationGroup.present ? variationGroup.value : this.variationGroup,
      );
  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('wgerId: $wgerId, ')
          ..write('name: $name, ')
          ..write('aliases: $aliases, ')
          ..write('category: $category, ')
          ..write('description: $description, ')
          ..write('notes: $notes, ')
          ..write('descLicense: $descLicense, ')
          ..write('descAuthors: $descAuthors, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('type: $type, ')
          ..write('flipped: $flipped, ')
          ..write('animated: $animated, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('variationGroup: $variationGroup')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      wgerId,
      name,
      aliases,
      category,
      description,
      notes,
      descLicense,
      descAuthors,
      imageSlug,
      type,
      flipped,
      animated,
      imageLicense,
      variationGroup);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.wgerId == this.wgerId &&
          other.name == this.name &&
          other.aliases == this.aliases &&
          other.category == this.category &&
          other.description == this.description &&
          other.notes == this.notes &&
          other.descLicense == this.descLicense &&
          other.descAuthors == this.descAuthors &&
          other.imageSlug == this.imageSlug &&
          other.type == this.type &&
          other.flipped == this.flipped &&
          other.animated == this.animated &&
          other.imageLicense == this.imageLicense &&
          other.variationGroup == this.variationGroup);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> wgerId;
  final Value<String> name;
  final Value<String?> aliases;
  final Value<ExerciseCategory> category;
  final Value<String?> description;
  final Value<String?> notes;
  final Value<License> descLicense;
  final Value<String> descAuthors;
  final Value<String?> imageSlug;
  final Value<ExerciseType> type;
  final Value<bool> flipped;
  final Value<bool> animated;
  final Value<String?> imageLicense;
  final Value<int?> variationGroup;
  const ExercisesCompanion({
    this.wgerId = const Value.absent(),
    this.name = const Value.absent(),
    this.aliases = const Value.absent(),
    this.category = const Value.absent(),
    this.description = const Value.absent(),
    this.notes = const Value.absent(),
    this.descLicense = const Value.absent(),
    this.descAuthors = const Value.absent(),
    this.imageSlug = const Value.absent(),
    this.type = const Value.absent(),
    this.flipped = const Value.absent(),
    this.animated = const Value.absent(),
    this.imageLicense = const Value.absent(),
    this.variationGroup = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.wgerId = const Value.absent(),
    required String name,
    this.aliases = const Value.absent(),
    required ExerciseCategory category,
    this.description = const Value.absent(),
    this.notes = const Value.absent(),
    required License descLicense,
    required String descAuthors,
    this.imageSlug = const Value.absent(),
    required ExerciseType type,
    this.flipped = const Value.absent(),
    this.animated = const Value.absent(),
    this.imageLicense = const Value.absent(),
    this.variationGroup = const Value.absent(),
  })  : name = Value(name),
        category = Value(category),
        descLicense = Value(descLicense),
        descAuthors = Value(descAuthors),
        type = Value(type);
  static Insertable<Exercise> custom({
    Expression<int>? wgerId,
    Expression<String>? name,
    Expression<String>? aliases,
    Expression<int>? category,
    Expression<String>? description,
    Expression<String>? notes,
    Expression<String>? descLicense,
    Expression<String>? descAuthors,
    Expression<String>? imageSlug,
    Expression<int>? type,
    Expression<bool>? flipped,
    Expression<bool>? animated,
    Expression<String>? imageLicense,
    Expression<int>? variationGroup,
  }) {
    return RawValuesInsertable({
      if (wgerId != null) 'wger_id': wgerId,
      if (name != null) 'name': name,
      if (aliases != null) 'aliases': aliases,
      if (category != null) 'category': category,
      if (description != null) 'description': description,
      if (notes != null) 'notes': notes,
      if (descLicense != null) 'desc_license': descLicense,
      if (descAuthors != null) 'desc_authors': descAuthors,
      if (imageSlug != null) 'image_slug': imageSlug,
      if (type != null) 'type': type,
      if (flipped != null) 'flipped': flipped,
      if (animated != null) 'animated': animated,
      if (imageLicense != null) 'image_license': imageLicense,
      if (variationGroup != null) 'variation_group': variationGroup,
    });
  }

  ExercisesCompanion copyWith(
      {Value<int>? wgerId,
      Value<String>? name,
      Value<String?>? aliases,
      Value<ExerciseCategory>? category,
      Value<String?>? description,
      Value<String?>? notes,
      Value<License>? descLicense,
      Value<String>? descAuthors,
      Value<String?>? imageSlug,
      Value<ExerciseType>? type,
      Value<bool>? flipped,
      Value<bool>? animated,
      Value<String?>? imageLicense,
      Value<int?>? variationGroup}) {
    return ExercisesCompanion(
      wgerId: wgerId ?? this.wgerId,
      name: name ?? this.name,
      aliases: aliases ?? this.aliases,
      category: category ?? this.category,
      description: description ?? this.description,
      notes: notes ?? this.notes,
      descLicense: descLicense ?? this.descLicense,
      descAuthors: descAuthors ?? this.descAuthors,
      imageSlug: imageSlug ?? this.imageSlug,
      type: type ?? this.type,
      flipped: flipped ?? this.flipped,
      animated: animated ?? this.animated,
      imageLicense: imageLicense ?? this.imageLicense,
      variationGroup: variationGroup ?? this.variationGroup,
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
    if (aliases.present) {
      map['aliases'] = Variable<String>(aliases.value);
    }
    if (category.present) {
      final converter = $ExercisesTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (descLicense.present) {
      final converter = $ExercisesTable.$converterdescLicense;
      map['desc_license'] =
          Variable<String>(converter.toSql(descLicense.value));
    }
    if (descAuthors.present) {
      map['desc_authors'] = Variable<String>(descAuthors.value);
    }
    if (imageSlug.present) {
      map['image_slug'] = Variable<String>(imageSlug.value);
    }
    if (type.present) {
      final converter = $ExercisesTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    if (flipped.present) {
      map['flipped'] = Variable<bool>(flipped.value);
    }
    if (animated.present) {
      map['animated'] = Variable<bool>(animated.value);
    }
    if (imageLicense.present) {
      map['image_license'] = Variable<String>(imageLicense.value);
    }
    if (variationGroup.present) {
      map['variation_group'] = Variable<int>(variationGroup.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('wgerId: $wgerId, ')
          ..write('name: $name, ')
          ..write('aliases: $aliases, ')
          ..write('category: $category, ')
          ..write('description: $description, ')
          ..write('notes: $notes, ')
          ..write('descLicense: $descLicense, ')
          ..write('descAuthors: $descAuthors, ')
          ..write('imageSlug: $imageSlug, ')
          ..write('type: $type, ')
          ..write('flipped: $flipped, ')
          ..write('animated: $animated, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('variationGroup: $variationGroup')
          ..write(')'))
        .toString();
  }
}

class $ExerciseMusclesTable extends ExerciseMuscles
    with TableInfo<$ExerciseMusclesTable, ExerciseMuscle> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseMusclesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _exerciseMeta =
      const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int> exercise = GeneratedColumn<int>(
      'exercise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _muscleMeta = const VerificationMeta('muscle');
  @override
  late final GeneratedColumn<int> muscle = GeneratedColumn<int>(
      'muscle', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumnWithTypeConverter<MuscleRole, int> role =
      GeneratedColumn<int>('role', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<MuscleRole>($ExerciseMusclesTable.$converterrole);
  @override
  List<GeneratedColumn> get $columns => [exercise, muscle, role];
  @override
  String get aliasedName => _alias ?? 'exercise_muscles';
  @override
  String get actualTableName => 'exercise_muscles';
  @override
  VerificationContext validateIntegrity(Insertable<ExerciseMuscle> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exercise.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    if (data.containsKey('muscle')) {
      context.handle(_muscleMeta,
          muscle.isAcceptableOrUnknown(data['muscle']!, _muscleMeta));
    } else if (isInserting) {
      context.missing(_muscleMeta);
    }
    context.handle(_roleMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exercise, muscle};
  @override
  ExerciseMuscle map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseMuscle(
      exercise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise'])!,
      muscle: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}muscle'])!,
      role: $ExerciseMusclesTable.$converterrole.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role'])!),
    );
  }

  @override
  $ExerciseMusclesTable createAlias(String alias) {
    return $ExerciseMusclesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<MuscleRole, int, int> $converterrole =
      const EnumIndexConverter<MuscleRole>(MuscleRole.values);
}

class ExerciseMuscle extends DataClass implements Insertable<ExerciseMuscle> {
  final int exercise;
  final int muscle;
  final MuscleRole role;
  const ExerciseMuscle(
      {required this.exercise, required this.muscle, required this.role});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise'] = Variable<int>(exercise);
    map['muscle'] = Variable<int>(muscle);
    {
      final converter = $ExerciseMusclesTable.$converterrole;
      map['role'] = Variable<int>(converter.toSql(role));
    }
    return map;
  }

  ExerciseMusclesCompanion toCompanion(bool nullToAbsent) {
    return ExerciseMusclesCompanion(
      exercise: Value(exercise),
      muscle: Value(muscle),
      role: Value(role),
    );
  }

  factory ExerciseMuscle.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseMuscle(
      exercise: serializer.fromJson<int>(json['exercise']),
      muscle: serializer.fromJson<int>(json['muscle']),
      role: $ExerciseMusclesTable.$converterrole
          .fromJson(serializer.fromJson<int>(json['role'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exercise': serializer.toJson<int>(exercise),
      'muscle': serializer.toJson<int>(muscle),
      'role': serializer
          .toJson<int>($ExerciseMusclesTable.$converterrole.toJson(role)),
    };
  }

  ExerciseMuscle copyWith({int? exercise, int? muscle, MuscleRole? role}) =>
      ExerciseMuscle(
        exercise: exercise ?? this.exercise,
        muscle: muscle ?? this.muscle,
        role: role ?? this.role,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseMuscle(')
          ..write('exercise: $exercise, ')
          ..write('muscle: $muscle, ')
          ..write('role: $role')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(exercise, muscle, role);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseMuscle &&
          other.exercise == this.exercise &&
          other.muscle == this.muscle &&
          other.role == this.role);
}

class ExerciseMusclesCompanion extends UpdateCompanion<ExerciseMuscle> {
  final Value<int> exercise;
  final Value<int> muscle;
  final Value<MuscleRole> role;
  const ExerciseMusclesCompanion({
    this.exercise = const Value.absent(),
    this.muscle = const Value.absent(),
    this.role = const Value.absent(),
  });
  ExerciseMusclesCompanion.insert({
    required int exercise,
    required int muscle,
    required MuscleRole role,
  })  : exercise = Value(exercise),
        muscle = Value(muscle),
        role = Value(role);
  static Insertable<ExerciseMuscle> custom({
    Expression<int>? exercise,
    Expression<int>? muscle,
    Expression<int>? role,
  }) {
    return RawValuesInsertable({
      if (exercise != null) 'exercise': exercise,
      if (muscle != null) 'muscle': muscle,
      if (role != null) 'role': role,
    });
  }

  ExerciseMusclesCompanion copyWith(
      {Value<int>? exercise, Value<int>? muscle, Value<MuscleRole>? role}) {
    return ExerciseMusclesCompanion(
      exercise: exercise ?? this.exercise,
      muscle: muscle ?? this.muscle,
      role: role ?? this.role,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (muscle.present) {
      map['muscle'] = Variable<int>(muscle.value);
    }
    if (role.present) {
      final converter = $ExerciseMusclesTable.$converterrole;
      map['role'] = Variable<int>(converter.toSql(role.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseMusclesCompanion(')
          ..write('exercise: $exercise, ')
          ..write('muscle: $muscle, ')
          ..write('role: $role')
          ..write(')'))
        .toString();
  }
}

class $ExerciseTranslationsTable extends ExerciseTranslations
    with TableInfo<$ExerciseTranslationsTable, ExerciseTranslation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseTranslationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _exerciseMeta =
      const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int> exercise = GeneratedColumn<int>(
      'exercise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumnWithTypeConverter<ExerciseLanguage, int> language =
      GeneratedColumn<int>('language', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<ExerciseLanguage>(
              $ExerciseTranslationsTable.$converterlanguage);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _translationLicenseMeta =
      const VerificationMeta('translationLicense');
  @override
  late final GeneratedColumn<String> translationLicense =
      GeneratedColumn<String>('translation_license', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [exercise, language, name, description, translationLicense];
  @override
  String get aliasedName => _alias ?? 'exercise_translations';
  @override
  String get actualTableName => 'exercise_translations';
  @override
  VerificationContext validateIntegrity(
      Insertable<ExerciseTranslation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exercise.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    context.handle(_languageMeta, const VerificationResult.success());
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
    if (data.containsKey('translation_license')) {
      context.handle(
          _translationLicenseMeta,
          translationLicense.isAcceptableOrUnknown(
              data['translation_license']!, _translationLicenseMeta));
    } else if (isInserting) {
      context.missing(_translationLicenseMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exercise, language};
  @override
  ExerciseTranslation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseTranslation(
      exercise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise'])!,
      language: $ExerciseTranslationsTable.$converterlanguage.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}language'])!),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      translationLicense: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}translation_license'])!,
    );
  }

  @override
  $ExerciseTranslationsTable createAlias(String alias) {
    return $ExerciseTranslationsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ExerciseLanguage, int, int> $converterlanguage =
      const EnumIndexConverter<ExerciseLanguage>(ExerciseLanguage.values);
}

class ExerciseTranslation extends DataClass
    implements Insertable<ExerciseTranslation> {
  final int exercise;
  final ExerciseLanguage language;
  final String name;
  final String? description;
  final String translationLicense;
  const ExerciseTranslation(
      {required this.exercise,
      required this.language,
      required this.name,
      this.description,
      required this.translationLicense});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise'] = Variable<int>(exercise);
    {
      final converter = $ExerciseTranslationsTable.$converterlanguage;
      map['language'] = Variable<int>(converter.toSql(language));
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['translation_license'] = Variable<String>(translationLicense);
    return map;
  }

  ExerciseTranslationsCompanion toCompanion(bool nullToAbsent) {
    return ExerciseTranslationsCompanion(
      exercise: Value(exercise),
      language: Value(language),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      translationLicense: Value(translationLicense),
    );
  }

  factory ExerciseTranslation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseTranslation(
      exercise: serializer.fromJson<int>(json['exercise']),
      language: $ExerciseTranslationsTable.$converterlanguage
          .fromJson(serializer.fromJson<int>(json['language'])),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      translationLicense:
          serializer.fromJson<String>(json['translationLicense']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exercise': serializer.toJson<int>(exercise),
      'language': serializer.toJson<int>(
          $ExerciseTranslationsTable.$converterlanguage.toJson(language)),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'translationLicense': serializer.toJson<String>(translationLicense),
    };
  }

  ExerciseTranslation copyWith(
          {int? exercise,
          ExerciseLanguage? language,
          String? name,
          Value<String?> description = const Value.absent(),
          String? translationLicense}) =>
      ExerciseTranslation(
        exercise: exercise ?? this.exercise,
        language: language ?? this.language,
        name: name ?? this.name,
        description: description.present ? description.value : this.description,
        translationLicense: translationLicense ?? this.translationLicense,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseTranslation(')
          ..write('exercise: $exercise, ')
          ..write('language: $language, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('translationLicense: $translationLicense')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(exercise, language, name, description, translationLicense);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseTranslation &&
          other.exercise == this.exercise &&
          other.language == this.language &&
          other.name == this.name &&
          other.description == this.description &&
          other.translationLicense == this.translationLicense);
}

class ExerciseTranslationsCompanion
    extends UpdateCompanion<ExerciseTranslation> {
  final Value<int> exercise;
  final Value<ExerciseLanguage> language;
  final Value<String> name;
  final Value<String?> description;
  final Value<String> translationLicense;
  const ExerciseTranslationsCompanion({
    this.exercise = const Value.absent(),
    this.language = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.translationLicense = const Value.absent(),
  });
  ExerciseTranslationsCompanion.insert({
    required int exercise,
    required ExerciseLanguage language,
    required String name,
    this.description = const Value.absent(),
    required String translationLicense,
  })  : exercise = Value(exercise),
        language = Value(language),
        name = Value(name),
        translationLicense = Value(translationLicense);
  static Insertable<ExerciseTranslation> custom({
    Expression<int>? exercise,
    Expression<int>? language,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? translationLicense,
  }) {
    return RawValuesInsertable({
      if (exercise != null) 'exercise': exercise,
      if (language != null) 'language': language,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (translationLicense != null) 'translation_license': translationLicense,
    });
  }

  ExerciseTranslationsCompanion copyWith(
      {Value<int>? exercise,
      Value<ExerciseLanguage>? language,
      Value<String>? name,
      Value<String?>? description,
      Value<String>? translationLicense}) {
    return ExerciseTranslationsCompanion(
      exercise: exercise ?? this.exercise,
      language: language ?? this.language,
      name: name ?? this.name,
      description: description ?? this.description,
      translationLicense: translationLicense ?? this.translationLicense,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (language.present) {
      final converter = $ExerciseTranslationsTable.$converterlanguage;
      map['language'] = Variable<int>(converter.toSql(language.value));
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (translationLicense.present) {
      map['translation_license'] = Variable<String>(translationLicense.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseTranslationsCompanion(')
          ..write('exercise: $exercise, ')
          ..write('language: $language, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('translationLicense: $translationLicense')
          ..write(')'))
        .toString();
  }
}

class $WorkoutsTable extends Workouts with TableInfo<$WorkoutsTable, Workout> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<WorkoutType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<WorkoutType>($WorkoutsTable.$convertertype);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumnWithTypeConverter<WorkoutCategory, int> category =
      GeneratedColumn<int>('category', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<WorkoutCategory>($WorkoutsTable.$convertercategory);
  static const VerificationMeta _countdownDurationMeta =
      const VerificationMeta('countdownDuration');
  @override
  late final GeneratedColumn<int> countdownDuration = GeneratedColumn<int>(
      'countdown_duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exerciseDurationMeta =
      const VerificationMeta('exerciseDuration');
  @override
  late final GeneratedColumn<int> exerciseDuration = GeneratedColumn<int>(
      'exercise_duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _breakDurationMeta =
      const VerificationMeta('breakDuration');
  @override
  late final GeneratedColumn<int> breakDuration = GeneratedColumn<int>(
      'break_duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lastUsedMeta =
      const VerificationMeta('lastUsed');
  @override
  late final GeneratedColumn<DateTime> lastUsed = GeneratedColumn<DateTime>(
      'last_used', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        type,
        title,
        category,
        countdownDuration,
        exerciseDuration,
        breakDuration,
        lastUsed
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
    if (data.containsKey('last_used')) {
      context.handle(_lastUsedMeta,
          lastUsed.isAcceptableOrUnknown(data['last_used']!, _lastUsedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Workout map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Workout(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      type: $WorkoutsTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      category: $WorkoutsTable.$convertercategory.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])!),
      countdownDuration: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}countdown_duration'])!,
      exerciseDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise_duration'])!,
      breakDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}break_duration'])!,
      lastUsed: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_used']),
    );
  }

  @override
  $WorkoutsTable createAlias(String alias) {
    return $WorkoutsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<WorkoutType, int, int> $convertertype =
      const EnumIndexConverter<WorkoutType>(WorkoutType.values);
  static JsonTypeConverter2<WorkoutCategory, int, int> $convertercategory =
      const EnumIndexConverter<WorkoutCategory>(WorkoutCategory.values);
}

class Workout extends DataClass implements Insertable<Workout> {
  final int id;
  final WorkoutType type;
  final String title;
  final WorkoutCategory category;
  final int countdownDuration;
  final int exerciseDuration;
  final int breakDuration;
  final DateTime? lastUsed;
  const Workout(
      {required this.id,
      required this.type,
      required this.title,
      required this.category,
      required this.countdownDuration,
      required this.exerciseDuration,
      required this.breakDuration,
      this.lastUsed});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $WorkoutsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['title'] = Variable<String>(title);
    {
      final converter = $WorkoutsTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category));
    }
    map['countdown_duration'] = Variable<int>(countdownDuration);
    map['exercise_duration'] = Variable<int>(exerciseDuration);
    map['break_duration'] = Variable<int>(breakDuration);
    if (!nullToAbsent || lastUsed != null) {
      map['last_used'] = Variable<DateTime>(lastUsed);
    }
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
      lastUsed: lastUsed == null && nullToAbsent
          ? const Value.absent()
          : Value(lastUsed),
    );
  }

  factory Workout.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Workout(
      id: serializer.fromJson<int>(json['id']),
      type: $WorkoutsTable.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
      title: serializer.fromJson<String>(json['title']),
      category: $WorkoutsTable.$convertercategory
          .fromJson(serializer.fromJson<int>(json['category'])),
      countdownDuration: serializer.fromJson<int>(json['countdownDuration']),
      exerciseDuration: serializer.fromJson<int>(json['exerciseDuration']),
      breakDuration: serializer.fromJson<int>(json['breakDuration']),
      lastUsed: serializer.fromJson<DateTime?>(json['lastUsed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'type':
          serializer.toJson<int>($WorkoutsTable.$convertertype.toJson(type)),
      'title': serializer.toJson<String>(title),
      'category': serializer
          .toJson<int>($WorkoutsTable.$convertercategory.toJson(category)),
      'countdownDuration': serializer.toJson<int>(countdownDuration),
      'exerciseDuration': serializer.toJson<int>(exerciseDuration),
      'breakDuration': serializer.toJson<int>(breakDuration),
      'lastUsed': serializer.toJson<DateTime?>(lastUsed),
    };
  }

  Workout copyWith(
          {int? id,
          WorkoutType? type,
          String? title,
          WorkoutCategory? category,
          int? countdownDuration,
          int? exerciseDuration,
          int? breakDuration,
          Value<DateTime?> lastUsed = const Value.absent()}) =>
      Workout(
        id: id ?? this.id,
        type: type ?? this.type,
        title: title ?? this.title,
        category: category ?? this.category,
        countdownDuration: countdownDuration ?? this.countdownDuration,
        exerciseDuration: exerciseDuration ?? this.exerciseDuration,
        breakDuration: breakDuration ?? this.breakDuration,
        lastUsed: lastUsed.present ? lastUsed.value : this.lastUsed,
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
          ..write('breakDuration: $breakDuration, ')
          ..write('lastUsed: $lastUsed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, title, category, countdownDuration,
      exerciseDuration, breakDuration, lastUsed);
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
          other.breakDuration == this.breakDuration &&
          other.lastUsed == this.lastUsed);
}

class WorkoutsCompanion extends UpdateCompanion<Workout> {
  final Value<int> id;
  final Value<WorkoutType> type;
  final Value<String> title;
  final Value<WorkoutCategory> category;
  final Value<int> countdownDuration;
  final Value<int> exerciseDuration;
  final Value<int> breakDuration;
  final Value<DateTime?> lastUsed;
  const WorkoutsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.countdownDuration = const Value.absent(),
    this.exerciseDuration = const Value.absent(),
    this.breakDuration = const Value.absent(),
    this.lastUsed = const Value.absent(),
  });
  WorkoutsCompanion.insert({
    this.id = const Value.absent(),
    required WorkoutType type,
    required String title,
    required WorkoutCategory category,
    required int countdownDuration,
    required int exerciseDuration,
    required int breakDuration,
    this.lastUsed = const Value.absent(),
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
    Expression<DateTime>? lastUsed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (countdownDuration != null) 'countdown_duration': countdownDuration,
      if (exerciseDuration != null) 'exercise_duration': exerciseDuration,
      if (breakDuration != null) 'break_duration': breakDuration,
      if (lastUsed != null) 'last_used': lastUsed,
    });
  }

  WorkoutsCompanion copyWith(
      {Value<int>? id,
      Value<WorkoutType>? type,
      Value<String>? title,
      Value<WorkoutCategory>? category,
      Value<int>? countdownDuration,
      Value<int>? exerciseDuration,
      Value<int>? breakDuration,
      Value<DateTime?>? lastUsed}) {
    return WorkoutsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      category: category ?? this.category,
      countdownDuration: countdownDuration ?? this.countdownDuration,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      breakDuration: breakDuration ?? this.breakDuration,
      lastUsed: lastUsed ?? this.lastUsed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (type.present) {
      final converter = $WorkoutsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type.value));
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (category.present) {
      final converter = $WorkoutsTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category.value));
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
    if (lastUsed.present) {
      map['last_used'] = Variable<DateTime>(lastUsed.value);
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
          ..write('breakDuration: $breakDuration, ')
          ..write('lastUsed: $lastUsed')
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
  static const VerificationMeta _workoutIdMeta =
      const VerificationMeta('workoutId');
  @override
  late final GeneratedColumn<int> workoutId = GeneratedColumn<int>(
      'workout_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _orderPositionMeta =
      const VerificationMeta('orderPosition');
  @override
  late final GeneratedColumn<int> orderPosition = GeneratedColumn<int>(
      'order_position', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exerciseMeta =
      const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int> exercise = GeneratedColumn<int>(
      'exercise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exerciseDurationMeta =
      const VerificationMeta('exerciseDuration');
  @override
  late final GeneratedColumn<int> exerciseDuration = GeneratedColumn<int>(
      'exercise_duration', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _breakDurationMeta =
      const VerificationMeta('breakDuration');
  @override
  late final GeneratedColumn<int> breakDuration = GeneratedColumn<int>(
      'break_duration', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutExercise(
      workoutId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}workout_id'])!,
      orderPosition: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_position'])!,
      exercise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise'])!,
      exerciseDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise_duration']),
      breakDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}break_duration']),
    );
  }

  @override
  $WorkoutExercisesTable createAlias(String alias) {
    return $WorkoutExercisesTable(attachedDatabase, alias);
  }
}

class WorkoutExercise extends DataClass implements Insertable<WorkoutExercise> {
  final int workoutId;
  final int orderPosition;
  final int exercise;
  final int? exerciseDuration;
  final int? breakDuration;
  const WorkoutExercise(
      {required this.workoutId,
      required this.orderPosition,
      required this.exercise,
      this.exerciseDuration,
      this.breakDuration});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['workout_id'] = Variable<int>(workoutId);
    map['order_position'] = Variable<int>(orderPosition);
    map['exercise'] = Variable<int>(exercise);
    if (!nullToAbsent || exerciseDuration != null) {
      map['exercise_duration'] = Variable<int>(exerciseDuration);
    }
    if (!nullToAbsent || breakDuration != null) {
      map['break_duration'] = Variable<int>(breakDuration);
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
          Value<int?> exerciseDuration = const Value.absent(),
          Value<int?> breakDuration = const Value.absent()}) =>
      WorkoutExercise(
        workoutId: workoutId ?? this.workoutId,
        orderPosition: orderPosition ?? this.orderPosition,
        exercise: exercise ?? this.exercise,
        exerciseDuration: exerciseDuration.present
            ? exerciseDuration.value
            : this.exerciseDuration,
        breakDuration:
            breakDuration.present ? breakDuration.value : this.breakDuration,
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
    Expression<int>? exerciseDuration,
    Expression<int>? breakDuration,
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
      map['exercise_duration'] = Variable<int>(exerciseDuration.value);
    }
    if (breakDuration.present) {
      map['break_duration'] = Variable<int>(breakDuration.value);
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

class $WorkoutRecordsTable extends WorkoutRecords
    with TableInfo<$WorkoutRecordsTable, WorkoutRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumnWithTypeConverter<WorkoutCategory, int> category =
      GeneratedColumn<int>('category', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<WorkoutCategory>(
              $WorkoutRecordsTable.$convertercategory);
  static const VerificationMeta _completedDurationMeta =
      const VerificationMeta('completedDuration');
  @override
  late final GeneratedColumn<int> completedDuration = GeneratedColumn<int>(
      'completed_duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _workoutDurationMeta =
      const VerificationMeta('workoutDuration');
  @override
  late final GeneratedColumn<int> workoutDuration = GeneratedColumn<int>(
      'workout_duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _workoutStartMeta =
      const VerificationMeta('workoutStart');
  @override
  late final GeneratedColumn<DateTime> workoutStart = GeneratedColumn<DateTime>(
      'workout_start', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, category, completedDuration, workoutDuration, workoutStart];
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
    if (data.containsKey('completed_duration')) {
      context.handle(
          _completedDurationMeta,
          completedDuration.isAcceptableOrUnknown(
              data['completed_duration']!, _completedDurationMeta));
    } else if (isInserting) {
      context.missing(_completedDurationMeta);
    }
    if (data.containsKey('workout_duration')) {
      context.handle(
          _workoutDurationMeta,
          workoutDuration.isAcceptableOrUnknown(
              data['workout_duration']!, _workoutDurationMeta));
    } else if (isInserting) {
      context.missing(_workoutDurationMeta);
    }
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      category: $WorkoutRecordsTable.$convertercategory.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])!),
      completedDuration: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}completed_duration'])!,
      workoutDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}workout_duration'])!,
      workoutStart: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}workout_start'])!,
    );
  }

  @override
  $WorkoutRecordsTable createAlias(String alias) {
    return $WorkoutRecordsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<WorkoutCategory, int, int> $convertercategory =
      const EnumIndexConverter<WorkoutCategory>(WorkoutCategory.values);
}

class WorkoutRecord extends DataClass implements Insertable<WorkoutRecord> {
  final int id;
  final String title;
  final WorkoutCategory category;
  final int completedDuration;
  final int workoutDuration;
  final DateTime workoutStart;
  const WorkoutRecord(
      {required this.id,
      required this.title,
      required this.category,
      required this.completedDuration,
      required this.workoutDuration,
      required this.workoutStart});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    {
      final converter = $WorkoutRecordsTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category));
    }
    map['completed_duration'] = Variable<int>(completedDuration);
    map['workout_duration'] = Variable<int>(workoutDuration);
    map['workout_start'] = Variable<DateTime>(workoutStart);
    return map;
  }

  WorkoutRecordsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutRecordsCompanion(
      id: Value(id),
      title: Value(title),
      category: Value(category),
      completedDuration: Value(completedDuration),
      workoutDuration: Value(workoutDuration),
      workoutStart: Value(workoutStart),
    );
  }

  factory WorkoutRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutRecord(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      category: $WorkoutRecordsTable.$convertercategory
          .fromJson(serializer.fromJson<int>(json['category'])),
      completedDuration: serializer.fromJson<int>(json['completedDuration']),
      workoutDuration: serializer.fromJson<int>(json['workoutDuration']),
      workoutStart: serializer.fromJson<DateTime>(json['workoutStart']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'category': serializer.toJson<int>(
          $WorkoutRecordsTable.$convertercategory.toJson(category)),
      'completedDuration': serializer.toJson<int>(completedDuration),
      'workoutDuration': serializer.toJson<int>(workoutDuration),
      'workoutStart': serializer.toJson<DateTime>(workoutStart),
    };
  }

  WorkoutRecord copyWith(
          {int? id,
          String? title,
          WorkoutCategory? category,
          int? completedDuration,
          int? workoutDuration,
          DateTime? workoutStart}) =>
      WorkoutRecord(
        id: id ?? this.id,
        title: title ?? this.title,
        category: category ?? this.category,
        completedDuration: completedDuration ?? this.completedDuration,
        workoutDuration: workoutDuration ?? this.workoutDuration,
        workoutStart: workoutStart ?? this.workoutStart,
      );
  @override
  String toString() {
    return (StringBuffer('WorkoutRecord(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('category: $category, ')
          ..write('completedDuration: $completedDuration, ')
          ..write('workoutDuration: $workoutDuration, ')
          ..write('workoutStart: $workoutStart')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, category, completedDuration, workoutDuration, workoutStart);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutRecord &&
          other.id == this.id &&
          other.title == this.title &&
          other.category == this.category &&
          other.completedDuration == this.completedDuration &&
          other.workoutDuration == this.workoutDuration &&
          other.workoutStart == this.workoutStart);
}

class WorkoutRecordsCompanion extends UpdateCompanion<WorkoutRecord> {
  final Value<int> id;
  final Value<String> title;
  final Value<WorkoutCategory> category;
  final Value<int> completedDuration;
  final Value<int> workoutDuration;
  final Value<DateTime> workoutStart;
  const WorkoutRecordsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.category = const Value.absent(),
    this.completedDuration = const Value.absent(),
    this.workoutDuration = const Value.absent(),
    this.workoutStart = const Value.absent(),
  });
  WorkoutRecordsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required WorkoutCategory category,
    required int completedDuration,
    required int workoutDuration,
    required DateTime workoutStart,
  })  : title = Value(title),
        category = Value(category),
        completedDuration = Value(completedDuration),
        workoutDuration = Value(workoutDuration),
        workoutStart = Value(workoutStart);
  static Insertable<WorkoutRecord> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? category,
    Expression<int>? completedDuration,
    Expression<int>? workoutDuration,
    Expression<DateTime>? workoutStart,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (category != null) 'category': category,
      if (completedDuration != null) 'completed_duration': completedDuration,
      if (workoutDuration != null) 'workout_duration': workoutDuration,
      if (workoutStart != null) 'workout_start': workoutStart,
    });
  }

  WorkoutRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<WorkoutCategory>? category,
      Value<int>? completedDuration,
      Value<int>? workoutDuration,
      Value<DateTime>? workoutStart}) {
    return WorkoutRecordsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      category: category ?? this.category,
      completedDuration: completedDuration ?? this.completedDuration,
      workoutDuration: workoutDuration ?? this.workoutDuration,
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
      final converter = $WorkoutRecordsTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category.value));
    }
    if (completedDuration.present) {
      map['completed_duration'] = Variable<int>(completedDuration.value);
    }
    if (workoutDuration.present) {
      map['workout_duration'] = Variable<int>(workoutDuration.value);
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
          ..write('completedDuration: $completedDuration, ')
          ..write('workoutDuration: $workoutDuration, ')
          ..write('workoutStart: $workoutStart')
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
  static const VerificationMeta _workoutRecordIdMeta =
      const VerificationMeta('workoutRecordId');
  @override
  late final GeneratedColumn<int> workoutRecordId = GeneratedColumn<int>(
      'workout_record_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _orderPositionMeta =
      const VerificationMeta('orderPosition');
  @override
  late final GeneratedColumn<int> orderPosition = GeneratedColumn<int>(
      'order_position', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exerciseMeta =
      const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int> exercise = GeneratedColumn<int>(
      'exercise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _exerciseDurationMeta =
      const VerificationMeta('exerciseDuration');
  @override
  late final GeneratedColumn<int> exerciseDuration = GeneratedColumn<int>(
      'exercise_duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _completedDurationMeta =
      const VerificationMeta('completedDuration');
  @override
  late final GeneratedColumn<int> completedDuration = GeneratedColumn<int>(
      'completed_duration', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
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
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutExerciseRecord(
      workoutRecordId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}workout_record_id'])!,
      orderPosition: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_position'])!,
      exercise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise'])!,
      exerciseDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise_duration'])!,
      completedDuration: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}completed_duration'])!,
    );
  }

  @override
  $WorkoutExerciseRecordsTable createAlias(String alias) {
    return $WorkoutExerciseRecordsTable(attachedDatabase, alias);
  }
}

class WorkoutExerciseRecord extends DataClass
    implements Insertable<WorkoutExerciseRecord> {
  final int workoutRecordId;
  final int orderPosition;
  final int exercise;
  final int exerciseDuration;
  final int completedDuration;
  const WorkoutExerciseRecord(
      {required this.workoutRecordId,
      required this.orderPosition,
      required this.exercise,
      required this.exerciseDuration,
      required this.completedDuration});
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

abstract class _$FeeelDB extends GeneratedDatabase {
  _$FeeelDB(QueryExecutor e) : super(e);
  late final $ExercisesTable exercises = $ExercisesTable(this);
  late final $ExerciseMusclesTable exerciseMuscles =
      $ExerciseMusclesTable(this);
  late final $ExerciseTranslationsTable exerciseTranslations =
      $ExerciseTranslationsTable(this);
  late final $WorkoutsTable workouts = $WorkoutsTable(this);
  late final $WorkoutExercisesTable workoutExercises =
      $WorkoutExercisesTable(this);
  late final $WorkoutRecordsTable workoutRecords = $WorkoutRecordsTable(this);
  late final $WorkoutExerciseRecordsTable workoutExerciseRecords =
      $WorkoutExerciseRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        exercises,
        exerciseMuscles,
        exerciseTranslations,
        workouts,
        workoutExercises,
        workoutRecords,
        workoutExerciseRecords
      ];
}
