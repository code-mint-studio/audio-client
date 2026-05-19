// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoryDto {
  String get id;
  String get title;
  @JsonKey(name: 'desc')
  String get description;
  String get image;
  @JsonKey(name: 'total_chap')
  int get totalChapters;

  /// Create a copy of StoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryDtoCopyWith<StoryDto> get copyWith =>
      _$StoryDtoCopyWithImpl<StoryDto>(this as StoryDto, _$identity);

  /// Serializes this StoryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.totalChapters, totalChapters) ||
                other.totalChapters == totalChapters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, image, totalChapters);

  @override
  String toString() {
    return 'StoryDto(id: $id, title: $title, description: $description, image: $image, totalChapters: $totalChapters)';
  }
}

/// @nodoc
abstract mixin class $StoryDtoCopyWith<$Res> {
  factory $StoryDtoCopyWith(StoryDto value, $Res Function(StoryDto) _then) =
      _$StoryDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'desc') String description,
      String image,
      @JsonKey(name: 'total_chap') int totalChapters});
}

/// @nodoc
class _$StoryDtoCopyWithImpl<$Res> implements $StoryDtoCopyWith<$Res> {
  _$StoryDtoCopyWithImpl(this._self, this._then);

  final StoryDto _self;
  final $Res Function(StoryDto) _then;

  /// Create a copy of StoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? totalChapters = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      totalChapters: null == totalChapters
          ? _self.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [StoryDto].
extension StoryDtoPatterns on StoryDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StoryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoryDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StoryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoryDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StoryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoryDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            @JsonKey(name: 'desc') String description,
            String image,
            @JsonKey(name: 'total_chap') int totalChapters)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StoryDto() when $default != null:
        return $default(_that.id, _that.title, _that.description, _that.image,
            _that.totalChapters);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            @JsonKey(name: 'desc') String description,
            String image,
            @JsonKey(name: 'total_chap') int totalChapters)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoryDto():
        return $default(_that.id, _that.title, _that.description, _that.image,
            _that.totalChapters);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String title,
            @JsonKey(name: 'desc') String description,
            String image,
            @JsonKey(name: 'total_chap') int totalChapters)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StoryDto() when $default != null:
        return $default(_that.id, _that.title, _that.description, _that.image,
            _that.totalChapters);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StoryDto implements StoryDto {
  const _StoryDto(
      {required this.id,
      required this.title,
      @JsonKey(name: 'desc') required this.description,
      required this.image,
      @JsonKey(name: 'total_chap') required this.totalChapters});
  factory _StoryDto.fromJson(Map<String, dynamic> json) =>
      _$StoryDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'desc')
  final String description;
  @override
  final String image;
  @override
  @JsonKey(name: 'total_chap')
  final int totalChapters;

  /// Create a copy of StoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoryDtoCopyWith<_StoryDto> get copyWith =>
      __$StoryDtoCopyWithImpl<_StoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.totalChapters, totalChapters) ||
                other.totalChapters == totalChapters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, image, totalChapters);

  @override
  String toString() {
    return 'StoryDto(id: $id, title: $title, description: $description, image: $image, totalChapters: $totalChapters)';
  }
}

/// @nodoc
abstract mixin class _$StoryDtoCopyWith<$Res>
    implements $StoryDtoCopyWith<$Res> {
  factory _$StoryDtoCopyWith(_StoryDto value, $Res Function(_StoryDto) _then) =
      __$StoryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @JsonKey(name: 'desc') String description,
      String image,
      @JsonKey(name: 'total_chap') int totalChapters});
}

/// @nodoc
class __$StoryDtoCopyWithImpl<$Res> implements _$StoryDtoCopyWith<$Res> {
  __$StoryDtoCopyWithImpl(this._self, this._then);

  final _StoryDto _self;
  final $Res Function(_StoryDto) _then;

  /// Create a copy of StoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? totalChapters = null,
  }) {
    return _then(_StoryDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      totalChapters: null == totalChapters
          ? _self.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
