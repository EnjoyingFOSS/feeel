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
  late final GeneratedColumnWithTypeConverter<List<String>?, String> aliases =
      GeneratedColumn<String>('aliases', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>($ExercisesTable.$converteraliases);
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
  late final GeneratedColumnWithTypeConverter<List<String>?, String> notes =
      GeneratedColumn<String>('notes', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>($ExercisesTable.$converternotes);
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
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      descAuthors = GeneratedColumn<String>('desc_authors', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($ExercisesTable.$converterdescAuthors);
  static const VerificationMeta _imageSlugMeta =
      const VerificationMeta('imageSlug');
  @override
  late final GeneratedColumn<String> imageSlug = GeneratedColumn<String>(
      'image_slug', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _headOnlyMeta =
      const VerificationMeta('headOnly');
  @override
  late final GeneratedColumn<bool> headOnly =
      GeneratedColumn<bool>('head_only', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("head_only" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  static const VerificationMeta _imageFlippedMeta =
      const VerificationMeta('imageFlipped');
  @override
  late final GeneratedColumn<bool> imageFlipped =
      GeneratedColumn<bool>('image_flipped', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("image_flipped" IN (0, 1))',
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
  static const VerificationMeta _animatedMeta =
      const VerificationMeta('animated');
  @override
  late final GeneratedColumn<bool> animated =
      GeneratedColumn<bool>('animated', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("animated" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }));
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
        headOnly,
        imageFlipped,
        imageLicense,
        animated,
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
    context.handle(_aliasesMeta, const VerificationResult.success());
    context.handle(_categoryMeta, const VerificationResult.success());
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    context.handle(_notesMeta, const VerificationResult.success());
    context.handle(_descLicenseMeta, const VerificationResult.success());
    context.handle(_descAuthorsMeta, const VerificationResult.success());
    if (data.containsKey('image_slug')) {
      context.handle(_imageSlugMeta,
          imageSlug.isAcceptableOrUnknown(data['image_slug']!, _imageSlugMeta));
    }
    if (data.containsKey('head_only')) {
      context.handle(_headOnlyMeta,
          headOnly.isAcceptableOrUnknown(data['head_only']!, _headOnlyMeta));
    }
    if (data.containsKey('image_flipped')) {
      context.handle(
          _imageFlippedMeta,
          imageFlipped.isAcceptableOrUnknown(
              data['image_flipped']!, _imageFlippedMeta));
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
    } else if (isInserting) {
      context.missing(_animatedMeta);
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
      aliases: $ExercisesTable.$converteraliases.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}aliases'])),
      category: $ExercisesTable.$convertercategory.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])!),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      notes: $ExercisesTable.$converternotes.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes'])),
      descLicense: $ExercisesTable.$converterdescLicense.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}desc_license'])!),
      descAuthors: $ExercisesTable.$converterdescAuthors.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}desc_authors'])!),
      imageSlug: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_slug']),
      headOnly: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}head_only'])!,
      imageFlipped: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}image_flipped'])!,
      imageLicense: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_license']),
      animated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}animated'])!,
      variationGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}variation_group']),
    );
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>?, String?> $converteraliases =
      const NullableListConverter();
  static JsonTypeConverter2<ExerciseCategory, int, int> $convertercategory =
      const EnumIndexConverter<ExerciseCategory>(ExerciseCategory.values);
  static TypeConverter<List<String>?, String?> $converternotes =
      const NullableListConverter();
  static JsonTypeConverter2<License, String, String> $converterdescLicense =
      const EnumNameConverter<License>(License.values);
  static TypeConverter<List<String>, String> $converterdescAuthors =
      const ListConverter();
}

class Exercise extends DataClass implements Insertable<Exercise> {
  final int wgerId;
  final String name;
  final List<String>? aliases;
  final ExerciseCategory category;
  final String? description;
  final List<String>? notes;
  final License descLicense;
  final List<String> descAuthors;
  final String? imageSlug;
  final bool headOnly;
  final bool imageFlipped;
  final String? imageLicense;
  final bool animated;
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
      required this.headOnly,
      required this.imageFlipped,
      this.imageLicense,
      required this.animated,
      this.variationGroup});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['wger_id'] = Variable<int>(wgerId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || aliases != null) {
      final converter = $ExercisesTable.$converteraliases;
      map['aliases'] = Variable<String>(converter.toSql(aliases));
    }
    {
      final converter = $ExercisesTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || notes != null) {
      final converter = $ExercisesTable.$converternotes;
      map['notes'] = Variable<String>(converter.toSql(notes));
    }
    {
      final converter = $ExercisesTable.$converterdescLicense;
      map['desc_license'] = Variable<String>(converter.toSql(descLicense));
    }
    {
      final converter = $ExercisesTable.$converterdescAuthors;
      map['desc_authors'] = Variable<String>(converter.toSql(descAuthors));
    }
    if (!nullToAbsent || imageSlug != null) {
      map['image_slug'] = Variable<String>(imageSlug);
    }
    map['head_only'] = Variable<bool>(headOnly);
    map['image_flipped'] = Variable<bool>(imageFlipped);
    if (!nullToAbsent || imageLicense != null) {
      map['image_license'] = Variable<String>(imageLicense);
    }
    map['animated'] = Variable<bool>(animated);
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
      headOnly: Value(headOnly),
      imageFlipped: Value(imageFlipped),
      imageLicense: imageLicense == null && nullToAbsent
          ? const Value.absent()
          : Value(imageLicense),
      animated: Value(animated),
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
      aliases: serializer.fromJson<List<String>?>(json['aliases']),
      category: $ExercisesTable.$convertercategory
          .fromJson(serializer.fromJson<int>(json['category'])),
      description: serializer.fromJson<String?>(json['description']),
      notes: serializer.fromJson<List<String>?>(json['notes']),
      descLicense: $ExercisesTable.$converterdescLicense
          .fromJson(serializer.fromJson<String>(json['descLicense'])),
      descAuthors: serializer.fromJson<List<String>>(json['descAuthors']),
      imageSlug: serializer.fromJson<String?>(json['imageSlug']),
      headOnly: serializer.fromJson<bool>(json['headOnly']),
      imageFlipped: serializer.fromJson<bool>(json['imageFlipped']),
      imageLicense: serializer.fromJson<String?>(json['imageLicense']),
      animated: serializer.fromJson<bool>(json['animated']),
      variationGroup: serializer.fromJson<int?>(json['variationGroup']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'wgerId': serializer.toJson<int>(wgerId),
      'name': serializer.toJson<String>(name),
      'aliases': serializer.toJson<List<String>?>(aliases),
      'category': serializer
          .toJson<int>($ExercisesTable.$convertercategory.toJson(category)),
      'description': serializer.toJson<String?>(description),
      'notes': serializer.toJson<List<String>?>(notes),
      'descLicense': serializer.toJson<String>(
          $ExercisesTable.$converterdescLicense.toJson(descLicense)),
      'descAuthors': serializer.toJson<List<String>>(descAuthors),
      'imageSlug': serializer.toJson<String?>(imageSlug),
      'headOnly': serializer.toJson<bool>(headOnly),
      'imageFlipped': serializer.toJson<bool>(imageFlipped),
      'imageLicense': serializer.toJson<String?>(imageLicense),
      'animated': serializer.toJson<bool>(animated),
      'variationGroup': serializer.toJson<int?>(variationGroup),
    };
  }

  Exercise copyWith(
          {int? wgerId,
          String? name,
          Value<List<String>?> aliases = const Value.absent(),
          ExerciseCategory? category,
          Value<String?> description = const Value.absent(),
          Value<List<String>?> notes = const Value.absent(),
          License? descLicense,
          List<String>? descAuthors,
          Value<String?> imageSlug = const Value.absent(),
          bool? headOnly,
          bool? imageFlipped,
          Value<String?> imageLicense = const Value.absent(),
          bool? animated,
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
        headOnly: headOnly ?? this.headOnly,
        imageFlipped: imageFlipped ?? this.imageFlipped,
        imageLicense:
            imageLicense.present ? imageLicense.value : this.imageLicense,
        animated: animated ?? this.animated,
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
          ..write('headOnly: $headOnly, ')
          ..write('imageFlipped: $imageFlipped, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('animated: $animated, ')
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
      headOnly,
      imageFlipped,
      imageLicense,
      animated,
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
          other.headOnly == this.headOnly &&
          other.imageFlipped == this.imageFlipped &&
          other.imageLicense == this.imageLicense &&
          other.animated == this.animated &&
          other.variationGroup == this.variationGroup);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> wgerId;
  final Value<String> name;
  final Value<List<String>?> aliases;
  final Value<ExerciseCategory> category;
  final Value<String?> description;
  final Value<List<String>?> notes;
  final Value<License> descLicense;
  final Value<List<String>> descAuthors;
  final Value<String?> imageSlug;
  final Value<bool> headOnly;
  final Value<bool> imageFlipped;
  final Value<String?> imageLicense;
  final Value<bool> animated;
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
    this.headOnly = const Value.absent(),
    this.imageFlipped = const Value.absent(),
    this.imageLicense = const Value.absent(),
    this.animated = const Value.absent(),
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
    required List<String> descAuthors,
    this.imageSlug = const Value.absent(),
    this.headOnly = const Value.absent(),
    this.imageFlipped = const Value.absent(),
    this.imageLicense = const Value.absent(),
    required bool animated,
    this.variationGroup = const Value.absent(),
  })  : name = Value(name),
        category = Value(category),
        descLicense = Value(descLicense),
        descAuthors = Value(descAuthors),
        animated = Value(animated);
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
    Expression<bool>? headOnly,
    Expression<bool>? imageFlipped,
    Expression<String>? imageLicense,
    Expression<bool>? animated,
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
      if (headOnly != null) 'head_only': headOnly,
      if (imageFlipped != null) 'image_flipped': imageFlipped,
      if (imageLicense != null) 'image_license': imageLicense,
      if (animated != null) 'animated': animated,
      if (variationGroup != null) 'variation_group': variationGroup,
    });
  }

  ExercisesCompanion copyWith(
      {Value<int>? wgerId,
      Value<String>? name,
      Value<List<String>?>? aliases,
      Value<ExerciseCategory>? category,
      Value<String?>? description,
      Value<List<String>?>? notes,
      Value<License>? descLicense,
      Value<List<String>>? descAuthors,
      Value<String?>? imageSlug,
      Value<bool>? headOnly,
      Value<bool>? imageFlipped,
      Value<String?>? imageLicense,
      Value<bool>? animated,
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
      headOnly: headOnly ?? this.headOnly,
      imageFlipped: imageFlipped ?? this.imageFlipped,
      imageLicense: imageLicense ?? this.imageLicense,
      animated: animated ?? this.animated,
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
      final converter = $ExercisesTable.$converteraliases;
      map['aliases'] = Variable<String>(converter.toSql(aliases.value));
    }
    if (category.present) {
      final converter = $ExercisesTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (notes.present) {
      final converter = $ExercisesTable.$converternotes;
      map['notes'] = Variable<String>(converter.toSql(notes.value));
    }
    if (descLicense.present) {
      final converter = $ExercisesTable.$converterdescLicense;
      map['desc_license'] =
          Variable<String>(converter.toSql(descLicense.value));
    }
    if (descAuthors.present) {
      final converter = $ExercisesTable.$converterdescAuthors;
      map['desc_authors'] =
          Variable<String>(converter.toSql(descAuthors.value));
    }
    if (imageSlug.present) {
      map['image_slug'] = Variable<String>(imageSlug.value);
    }
    if (headOnly.present) {
      map['head_only'] = Variable<bool>(headOnly.value);
    }
    if (imageFlipped.present) {
      map['image_flipped'] = Variable<bool>(imageFlipped.value);
    }
    if (imageLicense.present) {
      map['image_license'] = Variable<String>(imageLicense.value);
    }
    if (animated.present) {
      map['animated'] = Variable<bool>(animated.value);
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
          ..write('headOnly: $headOnly, ')
          ..write('imageFlipped: $imageFlipped, ')
          ..write('imageLicense: $imageLicense, ')
          ..write('animated: $animated, ')
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
  late final GeneratedColumnWithTypeConverter<Muscle, int> muscle =
      GeneratedColumn<int>('muscle', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<Muscle>($ExerciseMusclesTable.$convertermuscle);
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
    context.handle(_muscleMeta, const VerificationResult.success());
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
      muscle: $ExerciseMusclesTable.$convertermuscle.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}muscle'])!),
      role: $ExerciseMusclesTable.$converterrole.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}role'])!),
    );
  }

  @override
  $ExerciseMusclesTable createAlias(String alias) {
    return $ExerciseMusclesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Muscle, int, int> $convertermuscle =
      const EnumIndexConverter<Muscle>(Muscle.values);
  static JsonTypeConverter2<MuscleRole, int, int> $converterrole =
      const EnumIndexConverter<MuscleRole>(MuscleRole.values);
}

class ExerciseMuscle extends DataClass implements Insertable<ExerciseMuscle> {
  final int exercise;
  final Muscle muscle;
  final MuscleRole role;
  const ExerciseMuscle(
      {required this.exercise, required this.muscle, required this.role});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise'] = Variable<int>(exercise);
    {
      final converter = $ExerciseMusclesTable.$convertermuscle;
      map['muscle'] = Variable<int>(converter.toSql(muscle));
    }
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
      muscle: $ExerciseMusclesTable.$convertermuscle
          .fromJson(serializer.fromJson<int>(json['muscle'])),
      role: $ExerciseMusclesTable.$converterrole
          .fromJson(serializer.fromJson<int>(json['role'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exercise': serializer.toJson<int>(exercise),
      'muscle': serializer
          .toJson<int>($ExerciseMusclesTable.$convertermuscle.toJson(muscle)),
      'role': serializer
          .toJson<int>($ExerciseMusclesTable.$converterrole.toJson(role)),
    };
  }

  ExerciseMuscle copyWith({int? exercise, Muscle? muscle, MuscleRole? role}) =>
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
  final Value<Muscle> muscle;
  final Value<MuscleRole> role;
  final Value<int> rowid;
  const ExerciseMusclesCompanion({
    this.exercise = const Value.absent(),
    this.muscle = const Value.absent(),
    this.role = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExerciseMusclesCompanion.insert({
    required int exercise,
    required Muscle muscle,
    required MuscleRole role,
    this.rowid = const Value.absent(),
  })  : exercise = Value(exercise),
        muscle = Value(muscle),
        role = Value(role);
  static Insertable<ExerciseMuscle> custom({
    Expression<int>? exercise,
    Expression<int>? muscle,
    Expression<int>? role,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (exercise != null) 'exercise': exercise,
      if (muscle != null) 'muscle': muscle,
      if (role != null) 'role': role,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExerciseMusclesCompanion copyWith(
      {Value<int>? exercise,
      Value<Muscle>? muscle,
      Value<MuscleRole>? role,
      Value<int>? rowid}) {
    return ExerciseMusclesCompanion(
      exercise: exercise ?? this.exercise,
      muscle: muscle ?? this.muscle,
      role: role ?? this.role,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (muscle.present) {
      final converter = $ExerciseMusclesTable.$convertermuscle;
      map['muscle'] = Variable<int>(converter.toSql(muscle.value));
    }
    if (role.present) {
      final converter = $ExerciseMusclesTable.$converterrole;
      map['role'] = Variable<int>(converter.toSql(role.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseMusclesCompanion(')
          ..write('exercise: $exercise, ')
          ..write('muscle: $muscle, ')
          ..write('role: $role, ')
          ..write('rowid: $rowid')
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
  static const VerificationMeta _localeMeta = const VerificationMeta('locale');
  @override
  late final GeneratedColumnWithTypeConverter<Locale, String> locale =
      GeneratedColumn<String>('locale', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Locale>($ExerciseTranslationsTable.$converterlocale);
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
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> notes =
      GeneratedColumn<String>('notes', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ExerciseTranslationsTable.$converternotes);
  static const VerificationMeta _translationLicenseMeta =
      const VerificationMeta('translationLicense');
  @override
  late final GeneratedColumnWithTypeConverter<License, String>
      translationLicense = GeneratedColumn<String>(
              'translation_license', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<License>(
              $ExerciseTranslationsTable.$convertertranslationLicense);
  static const VerificationMeta _translationAuthorsMeta =
      const VerificationMeta('translationAuthors');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String>
      translationAuthors = GeneratedColumn<String>(
              'translation_authors', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>(
              $ExerciseTranslationsTable.$convertertranslationAuthors);
  static const VerificationMeta _aliasesMeta =
      const VerificationMeta('aliases');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> aliases =
      GeneratedColumn<String>('aliases', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>(
              $ExerciseTranslationsTable.$converteraliases);
  @override
  List<GeneratedColumn> get $columns => [
        exercise,
        locale,
        name,
        description,
        notes,
        translationLicense,
        translationAuthors,
        aliases
      ];
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
    context.handle(_localeMeta, const VerificationResult.success());
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
    context.handle(_notesMeta, const VerificationResult.success());
    context.handle(_translationLicenseMeta, const VerificationResult.success());
    context.handle(_translationAuthorsMeta, const VerificationResult.success());
    context.handle(_aliasesMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exercise, locale};
  @override
  ExerciseTranslation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseTranslation(
      exercise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise'])!,
      locale: $ExerciseTranslationsTable.$converterlocale.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}locale'])!),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      notes: $ExerciseTranslationsTable.$converternotes.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes'])),
      translationLicense: $ExerciseTranslationsTable
          .$convertertranslationLicense
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}translation_license'])!),
      translationAuthors: $ExerciseTranslationsTable
          .$convertertranslationAuthors
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}translation_authors'])!),
      aliases: $ExerciseTranslationsTable.$converteraliases.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}aliases'])),
    );
  }

  @override
  $ExerciseTranslationsTable createAlias(String alias) {
    return $ExerciseTranslationsTable(attachedDatabase, alias);
  }

  static TypeConverter<Locale, String> $converterlocale =
      const LocaleConverter();
  static TypeConverter<List<String>?, String?> $converternotes =
      const NullableListConverter();
  static JsonTypeConverter2<License, String, String>
      $convertertranslationLicense =
      const EnumNameConverter<License>(License.values);
  static TypeConverter<List<String>, String> $convertertranslationAuthors =
      const ListConverter();
  static TypeConverter<List<String>?, String?> $converteraliases =
      const NullableListConverter();
}

class ExerciseTranslation extends DataClass
    implements Insertable<ExerciseTranslation> {
  final int exercise;
  final Locale locale;
  final String name;
  final String? description;
  final List<String>? notes;
  final License translationLicense;
  final List<String> translationAuthors;
  final List<String>? aliases;
  const ExerciseTranslation(
      {required this.exercise,
      required this.locale,
      required this.name,
      this.description,
      this.notes,
      required this.translationLicense,
      required this.translationAuthors,
      this.aliases});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise'] = Variable<int>(exercise);
    {
      final converter = $ExerciseTranslationsTable.$converterlocale;
      map['locale'] = Variable<String>(converter.toSql(locale));
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || notes != null) {
      final converter = $ExerciseTranslationsTable.$converternotes;
      map['notes'] = Variable<String>(converter.toSql(notes));
    }
    {
      final converter = $ExerciseTranslationsTable.$convertertranslationLicense;
      map['translation_license'] =
          Variable<String>(converter.toSql(translationLicense));
    }
    {
      final converter = $ExerciseTranslationsTable.$convertertranslationAuthors;
      map['translation_authors'] =
          Variable<String>(converter.toSql(translationAuthors));
    }
    if (!nullToAbsent || aliases != null) {
      final converter = $ExerciseTranslationsTable.$converteraliases;
      map['aliases'] = Variable<String>(converter.toSql(aliases));
    }
    return map;
  }

  ExerciseTranslationsCompanion toCompanion(bool nullToAbsent) {
    return ExerciseTranslationsCompanion(
      exercise: Value(exercise),
      locale: Value(locale),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      translationLicense: Value(translationLicense),
      translationAuthors: Value(translationAuthors),
      aliases: aliases == null && nullToAbsent
          ? const Value.absent()
          : Value(aliases),
    );
  }

  factory ExerciseTranslation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseTranslation(
      exercise: serializer.fromJson<int>(json['exercise']),
      locale: serializer.fromJson<Locale>(json['locale']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      notes: serializer.fromJson<List<String>?>(json['notes']),
      translationLicense: $ExerciseTranslationsTable
          .$convertertranslationLicense
          .fromJson(serializer.fromJson<String>(json['translationLicense'])),
      translationAuthors:
          serializer.fromJson<List<String>>(json['translationAuthors']),
      aliases: serializer.fromJson<List<String>?>(json['aliases']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exercise': serializer.toJson<int>(exercise),
      'locale': serializer.toJson<Locale>(locale),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'notes': serializer.toJson<List<String>?>(notes),
      'translationLicense': serializer.toJson<String>($ExerciseTranslationsTable
          .$convertertranslationLicense
          .toJson(translationLicense)),
      'translationAuthors': serializer.toJson<List<String>>(translationAuthors),
      'aliases': serializer.toJson<List<String>?>(aliases),
    };
  }

  ExerciseTranslation copyWith(
          {int? exercise,
          Locale? locale,
          String? name,
          Value<String?> description = const Value.absent(),
          Value<List<String>?> notes = const Value.absent(),
          License? translationLicense,
          List<String>? translationAuthors,
          Value<List<String>?> aliases = const Value.absent()}) =>
      ExerciseTranslation(
        exercise: exercise ?? this.exercise,
        locale: locale ?? this.locale,
        name: name ?? this.name,
        description: description.present ? description.value : this.description,
        notes: notes.present ? notes.value : this.notes,
        translationLicense: translationLicense ?? this.translationLicense,
        translationAuthors: translationAuthors ?? this.translationAuthors,
        aliases: aliases.present ? aliases.value : this.aliases,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseTranslation(')
          ..write('exercise: $exercise, ')
          ..write('locale: $locale, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('notes: $notes, ')
          ..write('translationLicense: $translationLicense, ')
          ..write('translationAuthors: $translationAuthors, ')
          ..write('aliases: $aliases')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(exercise, locale, name, description, notes,
      translationLicense, translationAuthors, aliases);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseTranslation &&
          other.exercise == this.exercise &&
          other.locale == this.locale &&
          other.name == this.name &&
          other.description == this.description &&
          other.notes == this.notes &&
          other.translationLicense == this.translationLicense &&
          other.translationAuthors == this.translationAuthors &&
          other.aliases == this.aliases);
}

class ExerciseTranslationsCompanion
    extends UpdateCompanion<ExerciseTranslation> {
  final Value<int> exercise;
  final Value<Locale> locale;
  final Value<String> name;
  final Value<String?> description;
  final Value<List<String>?> notes;
  final Value<License> translationLicense;
  final Value<List<String>> translationAuthors;
  final Value<List<String>?> aliases;
  final Value<int> rowid;
  const ExerciseTranslationsCompanion({
    this.exercise = const Value.absent(),
    this.locale = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.notes = const Value.absent(),
    this.translationLicense = const Value.absent(),
    this.translationAuthors = const Value.absent(),
    this.aliases = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExerciseTranslationsCompanion.insert({
    required int exercise,
    required Locale locale,
    required String name,
    this.description = const Value.absent(),
    this.notes = const Value.absent(),
    required License translationLicense,
    required List<String> translationAuthors,
    this.aliases = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : exercise = Value(exercise),
        locale = Value(locale),
        name = Value(name),
        translationLicense = Value(translationLicense),
        translationAuthors = Value(translationAuthors);
  static Insertable<ExerciseTranslation> custom({
    Expression<int>? exercise,
    Expression<String>? locale,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? notes,
    Expression<String>? translationLicense,
    Expression<String>? translationAuthors,
    Expression<String>? aliases,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (exercise != null) 'exercise': exercise,
      if (locale != null) 'locale': locale,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (notes != null) 'notes': notes,
      if (translationLicense != null) 'translation_license': translationLicense,
      if (translationAuthors != null) 'translation_authors': translationAuthors,
      if (aliases != null) 'aliases': aliases,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExerciseTranslationsCompanion copyWith(
      {Value<int>? exercise,
      Value<Locale>? locale,
      Value<String>? name,
      Value<String?>? description,
      Value<List<String>?>? notes,
      Value<License>? translationLicense,
      Value<List<String>>? translationAuthors,
      Value<List<String>?>? aliases,
      Value<int>? rowid}) {
    return ExerciseTranslationsCompanion(
      exercise: exercise ?? this.exercise,
      locale: locale ?? this.locale,
      name: name ?? this.name,
      description: description ?? this.description,
      notes: notes ?? this.notes,
      translationLicense: translationLicense ?? this.translationLicense,
      translationAuthors: translationAuthors ?? this.translationAuthors,
      aliases: aliases ?? this.aliases,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (locale.present) {
      final converter = $ExerciseTranslationsTable.$converterlocale;
      map['locale'] = Variable<String>(converter.toSql(locale.value));
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (notes.present) {
      final converter = $ExerciseTranslationsTable.$converternotes;
      map['notes'] = Variable<String>(converter.toSql(notes.value));
    }
    if (translationLicense.present) {
      final converter = $ExerciseTranslationsTable.$convertertranslationLicense;
      map['translation_license'] =
          Variable<String>(converter.toSql(translationLicense.value));
    }
    if (translationAuthors.present) {
      final converter = $ExerciseTranslationsTable.$convertertranslationAuthors;
      map['translation_authors'] =
          Variable<String>(converter.toSql(translationAuthors.value));
    }
    if (aliases.present) {
      final converter = $ExerciseTranslationsTable.$converteraliases;
      map['aliases'] = Variable<String>(converter.toSql(aliases.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseTranslationsCompanion(')
          ..write('exercise: $exercise, ')
          ..write('locale: $locale, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('notes: $notes, ')
          ..write('translationLicense: $translationLicense, ')
          ..write('translationAuthors: $translationAuthors, ')
          ..write('aliases: $aliases, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExerciseEquipmentTable extends ExerciseEquipment
    with TableInfo<$ExerciseEquipmentTable, ExerciseEquipmentItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExerciseEquipmentTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _exerciseMeta =
      const VerificationMeta('exercise');
  @override
  late final GeneratedColumn<int> exercise = GeneratedColumn<int>(
      'exercise', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _equipmentMeta =
      const VerificationMeta('equipment');
  @override
  late final GeneratedColumnWithTypeConverter<EquipmentItem, int> equipment =
      GeneratedColumn<int>('equipment', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<EquipmentItem>(
              $ExerciseEquipmentTable.$converterequipment);
  @override
  List<GeneratedColumn> get $columns => [exercise, equipment];
  @override
  String get aliasedName => _alias ?? 'exercise_equipment';
  @override
  String get actualTableName => 'exercise_equipment';
  @override
  VerificationContext validateIntegrity(
      Insertable<ExerciseEquipmentItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('exercise')) {
      context.handle(_exerciseMeta,
          exercise.isAcceptableOrUnknown(data['exercise']!, _exerciseMeta));
    } else if (isInserting) {
      context.missing(_exerciseMeta);
    }
    context.handle(_equipmentMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {exercise, equipment};
  @override
  ExerciseEquipmentItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseEquipmentItem(
      exercise: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise'])!,
      equipment: $ExerciseEquipmentTable.$converterequipment.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.int, data['${effectivePrefix}equipment'])!),
    );
  }

  @override
  $ExerciseEquipmentTable createAlias(String alias) {
    return $ExerciseEquipmentTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<EquipmentItem, int, int> $converterequipment =
      const EnumIndexConverter<EquipmentItem>(EquipmentItem.values);
}

class ExerciseEquipmentItem extends DataClass
    implements Insertable<ExerciseEquipmentItem> {
  final int exercise;
  final EquipmentItem equipment;
  const ExerciseEquipmentItem(
      {required this.exercise, required this.equipment});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['exercise'] = Variable<int>(exercise);
    {
      final converter = $ExerciseEquipmentTable.$converterequipment;
      map['equipment'] = Variable<int>(converter.toSql(equipment));
    }
    return map;
  }

  ExerciseEquipmentCompanion toCompanion(bool nullToAbsent) {
    return ExerciseEquipmentCompanion(
      exercise: Value(exercise),
      equipment: Value(equipment),
    );
  }

  factory ExerciseEquipmentItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseEquipmentItem(
      exercise: serializer.fromJson<int>(json['exercise']),
      equipment: $ExerciseEquipmentTable.$converterequipment
          .fromJson(serializer.fromJson<int>(json['equipment'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'exercise': serializer.toJson<int>(exercise),
      'equipment': serializer.toJson<int>(
          $ExerciseEquipmentTable.$converterequipment.toJson(equipment)),
    };
  }

  ExerciseEquipmentItem copyWith({int? exercise, EquipmentItem? equipment}) =>
      ExerciseEquipmentItem(
        exercise: exercise ?? this.exercise,
        equipment: equipment ?? this.equipment,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseEquipmentItem(')
          ..write('exercise: $exercise, ')
          ..write('equipment: $equipment')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(exercise, equipment);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseEquipmentItem &&
          other.exercise == this.exercise &&
          other.equipment == this.equipment);
}

class ExerciseEquipmentCompanion
    extends UpdateCompanion<ExerciseEquipmentItem> {
  final Value<int> exercise;
  final Value<EquipmentItem> equipment;
  final Value<int> rowid;
  const ExerciseEquipmentCompanion({
    this.exercise = const Value.absent(),
    this.equipment = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExerciseEquipmentCompanion.insert({
    required int exercise,
    required EquipmentItem equipment,
    this.rowid = const Value.absent(),
  })  : exercise = Value(exercise),
        equipment = Value(equipment);
  static Insertable<ExerciseEquipmentItem> custom({
    Expression<int>? exercise,
    Expression<int>? equipment,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (exercise != null) 'exercise': exercise,
      if (equipment != null) 'equipment': equipment,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExerciseEquipmentCompanion copyWith(
      {Value<int>? exercise,
      Value<EquipmentItem>? equipment,
      Value<int>? rowid}) {
    return ExerciseEquipmentCompanion(
      exercise: exercise ?? this.exercise,
      equipment: equipment ?? this.equipment,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (exercise.present) {
      map['exercise'] = Variable<int>(exercise.value);
    }
    if (equipment.present) {
      final converter = $ExerciseEquipmentTable.$converterequipment;
      map['equipment'] = Variable<int>(converter.toSql(equipment.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExerciseEquipmentCompanion(')
          ..write('exercise: $exercise, ')
          ..write('equipment: $equipment, ')
          ..write('rowid: $rowid')
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
  static const VerificationMeta _translationJsonMeta =
      const VerificationMeta('translationJson');
  @override
  late final GeneratedColumn<String> translationJson = GeneratedColumn<String>(
      'translation_json', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  static const VerificationMeta _cachedLastUseMeta =
      const VerificationMeta('cachedLastUse');
  @override
  late final GeneratedColumn<DateTime> cachedLastUse =
      GeneratedColumn<DateTime>('cached_last_use', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        type,
        title,
        translationJson,
        category,
        countdownDuration,
        exerciseDuration,
        breakDuration,
        cachedLastUse
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
    if (data.containsKey('translation_json')) {
      context.handle(
          _translationJsonMeta,
          translationJson.isAcceptableOrUnknown(
              data['translation_json']!, _translationJsonMeta));
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
    if (data.containsKey('cached_last_use')) {
      context.handle(
          _cachedLastUseMeta,
          cachedLastUse.isAcceptableOrUnknown(
              data['cached_last_use']!, _cachedLastUseMeta));
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
      translationJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}translation_json']),
      category: $WorkoutsTable.$convertercategory.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category'])!),
      countdownDuration: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}countdown_duration'])!,
      exerciseDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise_duration'])!,
      breakDuration: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}break_duration'])!,
      cachedLastUse: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}cached_last_use']),
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
  final String? translationJson;
  final WorkoutCategory category;
  final int countdownDuration;
  final int exerciseDuration;
  final int breakDuration;
  final DateTime? cachedLastUse;
  const Workout(
      {required this.id,
      required this.type,
      required this.title,
      this.translationJson,
      required this.category,
      required this.countdownDuration,
      required this.exerciseDuration,
      required this.breakDuration,
      this.cachedLastUse});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    {
      final converter = $WorkoutsTable.$convertertype;
      map['type'] = Variable<int>(converter.toSql(type));
    }
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || translationJson != null) {
      map['translation_json'] = Variable<String>(translationJson);
    }
    {
      final converter = $WorkoutsTable.$convertercategory;
      map['category'] = Variable<int>(converter.toSql(category));
    }
    map['countdown_duration'] = Variable<int>(countdownDuration);
    map['exercise_duration'] = Variable<int>(exerciseDuration);
    map['break_duration'] = Variable<int>(breakDuration);
    if (!nullToAbsent || cachedLastUse != null) {
      map['cached_last_use'] = Variable<DateTime>(cachedLastUse);
    }
    return map;
  }

  WorkoutsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutsCompanion(
      id: Value(id),
      type: Value(type),
      title: Value(title),
      translationJson: translationJson == null && nullToAbsent
          ? const Value.absent()
          : Value(translationJson),
      category: Value(category),
      countdownDuration: Value(countdownDuration),
      exerciseDuration: Value(exerciseDuration),
      breakDuration: Value(breakDuration),
      cachedLastUse: cachedLastUse == null && nullToAbsent
          ? const Value.absent()
          : Value(cachedLastUse),
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
      translationJson: serializer.fromJson<String?>(json['translationJson']),
      category: $WorkoutsTable.$convertercategory
          .fromJson(serializer.fromJson<int>(json['category'])),
      countdownDuration: serializer.fromJson<int>(json['countdownDuration']),
      exerciseDuration: serializer.fromJson<int>(json['exerciseDuration']),
      breakDuration: serializer.fromJson<int>(json['breakDuration']),
      cachedLastUse: serializer.fromJson<DateTime?>(json['cachedLastUse']),
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
      'translationJson': serializer.toJson<String?>(translationJson),
      'category': serializer
          .toJson<int>($WorkoutsTable.$convertercategory.toJson(category)),
      'countdownDuration': serializer.toJson<int>(countdownDuration),
      'exerciseDuration': serializer.toJson<int>(exerciseDuration),
      'breakDuration': serializer.toJson<int>(breakDuration),
      'cachedLastUse': serializer.toJson<DateTime?>(cachedLastUse),
    };
  }

  Workout copyWith(
          {int? id,
          WorkoutType? type,
          String? title,
          Value<String?> translationJson = const Value.absent(),
          WorkoutCategory? category,
          int? countdownDuration,
          int? exerciseDuration,
          int? breakDuration,
          Value<DateTime?> cachedLastUse = const Value.absent()}) =>
      Workout(
        id: id ?? this.id,
        type: type ?? this.type,
        title: title ?? this.title,
        translationJson: translationJson.present
            ? translationJson.value
            : this.translationJson,
        category: category ?? this.category,
        countdownDuration: countdownDuration ?? this.countdownDuration,
        exerciseDuration: exerciseDuration ?? this.exerciseDuration,
        breakDuration: breakDuration ?? this.breakDuration,
        cachedLastUse:
            cachedLastUse.present ? cachedLastUse.value : this.cachedLastUse,
      );
  @override
  String toString() {
    return (StringBuffer('Workout(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('title: $title, ')
          ..write('translationJson: $translationJson, ')
          ..write('category: $category, ')
          ..write('countdownDuration: $countdownDuration, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('breakDuration: $breakDuration, ')
          ..write('cachedLastUse: $cachedLastUse')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, type, title, translationJson, category,
      countdownDuration, exerciseDuration, breakDuration, cachedLastUse);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Workout &&
          other.id == this.id &&
          other.type == this.type &&
          other.title == this.title &&
          other.translationJson == this.translationJson &&
          other.category == this.category &&
          other.countdownDuration == this.countdownDuration &&
          other.exerciseDuration == this.exerciseDuration &&
          other.breakDuration == this.breakDuration &&
          other.cachedLastUse == this.cachedLastUse);
}

class WorkoutsCompanion extends UpdateCompanion<Workout> {
  final Value<int> id;
  final Value<WorkoutType> type;
  final Value<String> title;
  final Value<String?> translationJson;
  final Value<WorkoutCategory> category;
  final Value<int> countdownDuration;
  final Value<int> exerciseDuration;
  final Value<int> breakDuration;
  final Value<DateTime?> cachedLastUse;
  const WorkoutsCompanion({
    this.id = const Value.absent(),
    this.type = const Value.absent(),
    this.title = const Value.absent(),
    this.translationJson = const Value.absent(),
    this.category = const Value.absent(),
    this.countdownDuration = const Value.absent(),
    this.exerciseDuration = const Value.absent(),
    this.breakDuration = const Value.absent(),
    this.cachedLastUse = const Value.absent(),
  });
  WorkoutsCompanion.insert({
    this.id = const Value.absent(),
    required WorkoutType type,
    required String title,
    this.translationJson = const Value.absent(),
    required WorkoutCategory category,
    required int countdownDuration,
    required int exerciseDuration,
    required int breakDuration,
    this.cachedLastUse = const Value.absent(),
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
    Expression<String>? translationJson,
    Expression<int>? category,
    Expression<int>? countdownDuration,
    Expression<int>? exerciseDuration,
    Expression<int>? breakDuration,
    Expression<DateTime>? cachedLastUse,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (title != null) 'title': title,
      if (translationJson != null) 'translation_json': translationJson,
      if (category != null) 'category': category,
      if (countdownDuration != null) 'countdown_duration': countdownDuration,
      if (exerciseDuration != null) 'exercise_duration': exerciseDuration,
      if (breakDuration != null) 'break_duration': breakDuration,
      if (cachedLastUse != null) 'cached_last_use': cachedLastUse,
    });
  }

  WorkoutsCompanion copyWith(
      {Value<int>? id,
      Value<WorkoutType>? type,
      Value<String>? title,
      Value<String?>? translationJson,
      Value<WorkoutCategory>? category,
      Value<int>? countdownDuration,
      Value<int>? exerciseDuration,
      Value<int>? breakDuration,
      Value<DateTime?>? cachedLastUse}) {
    return WorkoutsCompanion(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      translationJson: translationJson ?? this.translationJson,
      category: category ?? this.category,
      countdownDuration: countdownDuration ?? this.countdownDuration,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      breakDuration: breakDuration ?? this.breakDuration,
      cachedLastUse: cachedLastUse ?? this.cachedLastUse,
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
    if (translationJson.present) {
      map['translation_json'] = Variable<String>(translationJson.value);
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
    if (cachedLastUse.present) {
      map['cached_last_use'] = Variable<DateTime>(cachedLastUse.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutsCompanion(')
          ..write('id: $id, ')
          ..write('type: $type, ')
          ..write('title: $title, ')
          ..write('translationJson: $translationJson, ')
          ..write('category: $category, ')
          ..write('countdownDuration: $countdownDuration, ')
          ..write('exerciseDuration: $exerciseDuration, ')
          ..write('breakDuration: $breakDuration, ')
          ..write('cachedLastUse: $cachedLastUse')
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
  final Value<int> rowid;
  const WorkoutExercisesCompanion({
    this.workoutId = const Value.absent(),
    this.orderPosition = const Value.absent(),
    this.exercise = const Value.absent(),
    this.exerciseDuration = const Value.absent(),
    this.breakDuration = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorkoutExercisesCompanion.insert({
    required int workoutId,
    required int orderPosition,
    required int exercise,
    this.exerciseDuration = const Value.absent(),
    this.breakDuration = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : workoutId = Value(workoutId),
        orderPosition = Value(orderPosition),
        exercise = Value(exercise);
  static Insertable<WorkoutExercise> custom({
    Expression<int>? workoutId,
    Expression<int>? orderPosition,
    Expression<int>? exercise,
    Expression<int>? exerciseDuration,
    Expression<int>? breakDuration,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (workoutId != null) 'workout_id': workoutId,
      if (orderPosition != null) 'order_position': orderPosition,
      if (exercise != null) 'exercise': exercise,
      if (exerciseDuration != null) 'exercise_duration': exerciseDuration,
      if (breakDuration != null) 'break_duration': breakDuration,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorkoutExercisesCompanion copyWith(
      {Value<int>? workoutId,
      Value<int>? orderPosition,
      Value<int>? exercise,
      Value<int?>? exerciseDuration,
      Value<int?>? breakDuration,
      Value<int>? rowid}) {
    return WorkoutExercisesCompanion(
      workoutId: workoutId ?? this.workoutId,
      orderPosition: orderPosition ?? this.orderPosition,
      exercise: exercise ?? this.exercise,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      breakDuration: breakDuration ?? this.breakDuration,
      rowid: rowid ?? this.rowid,
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
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
          ..write('breakDuration: $breakDuration, ')
          ..write('rowid: $rowid')
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
  final Value<int> rowid;
  const WorkoutExerciseRecordsCompanion({
    this.workoutRecordId = const Value.absent(),
    this.orderPosition = const Value.absent(),
    this.exercise = const Value.absent(),
    this.exerciseDuration = const Value.absent(),
    this.completedDuration = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorkoutExerciseRecordsCompanion.insert({
    required int workoutRecordId,
    required int orderPosition,
    required int exercise,
    required int exerciseDuration,
    required int completedDuration,
    this.rowid = const Value.absent(),
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
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (workoutRecordId != null) 'workout_record_id': workoutRecordId,
      if (orderPosition != null) 'order_position': orderPosition,
      if (exercise != null) 'exercise': exercise,
      if (exerciseDuration != null) 'exercise_duration': exerciseDuration,
      if (completedDuration != null) 'completed_duration': completedDuration,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorkoutExerciseRecordsCompanion copyWith(
      {Value<int>? workoutRecordId,
      Value<int>? orderPosition,
      Value<int>? exercise,
      Value<int>? exerciseDuration,
      Value<int>? completedDuration,
      Value<int>? rowid}) {
    return WorkoutExerciseRecordsCompanion(
      workoutRecordId: workoutRecordId ?? this.workoutRecordId,
      orderPosition: orderPosition ?? this.orderPosition,
      exercise: exercise ?? this.exercise,
      exerciseDuration: exerciseDuration ?? this.exerciseDuration,
      completedDuration: completedDuration ?? this.completedDuration,
      rowid: rowid ?? this.rowid,
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
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
          ..write('completedDuration: $completedDuration, ')
          ..write('rowid: $rowid')
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
  late final $ExerciseEquipmentTable exerciseEquipment =
      $ExerciseEquipmentTable(this);
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
        exerciseEquipment,
        workouts,
        workoutExercises,
        workoutRecords,
        workoutExerciseRecords
      ];
}
