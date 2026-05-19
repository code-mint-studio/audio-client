// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeResponseDto {
  @JsonKey(name: 'arrStory')
  List<StoryDto> get stories;

  /// Create a copy of HomeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeResponseDtoCopyWith<HomeResponseDto> get copyWith =>
      _$HomeResponseDtoCopyWithImpl<HomeResponseDto>(
          this as HomeResponseDto, _$identity);

  /// Serializes this HomeResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeResponseDto &&
            const DeepCollectionEquality().equals(other.stories, stories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stories));

  @override
  String toString() {
    return 'HomeResponseDto(stories: $stories)';
  }
}

/// @nodoc
abstract mixin class $HomeResponseDtoCopyWith<$Res> {
  factory $HomeResponseDtoCopyWith(
          HomeResponseDto value, $Res Function(HomeResponseDto) _then) =
      _$HomeResponseDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'arrStory') List<StoryDto> stories});
}

/// @nodoc
class _$HomeResponseDtoCopyWithImpl<$Res>
    implements $HomeResponseDtoCopyWith<$Res> {
  _$HomeResponseDtoCopyWithImpl(this._self, this._then);

  final HomeResponseDto _self;
  final $Res Function(HomeResponseDto) _then;

  /// Create a copy of HomeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_self.copyWith(
      stories: null == stories
          ? _self.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeResponseDto].
extension HomeResponseDtoPatterns on HomeResponseDto {
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
    TResult Function(_HomeResponseDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeResponseDto() when $default != null:
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
    TResult Function(_HomeResponseDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeResponseDto():
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
    TResult? Function(_HomeResponseDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeResponseDto() when $default != null:
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
    TResult Function(@JsonKey(name: 'arrStory') List<StoryDto> stories)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeResponseDto() when $default != null:
        return $default(_that.stories);
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
    TResult Function(@JsonKey(name: 'arrStory') List<StoryDto> stories)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeResponseDto():
        return $default(_that.stories);
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
    TResult? Function(@JsonKey(name: 'arrStory') List<StoryDto> stories)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeResponseDto() when $default != null:
        return $default(_that.stories);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HomeResponseDto implements HomeResponseDto {
  const _HomeResponseDto(
      {@JsonKey(name: 'arrStory') required final List<StoryDto> stories})
      : _stories = stories;
  factory _HomeResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseDtoFromJson(json);

  final List<StoryDto> _stories;
  @override
  @JsonKey(name: 'arrStory')
  List<StoryDto> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  /// Create a copy of HomeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeResponseDtoCopyWith<_HomeResponseDto> get copyWith =>
      __$HomeResponseDtoCopyWithImpl<_HomeResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeResponseDto &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  @override
  String toString() {
    return 'HomeResponseDto(stories: $stories)';
  }
}

/// @nodoc
abstract mixin class _$HomeResponseDtoCopyWith<$Res>
    implements $HomeResponseDtoCopyWith<$Res> {
  factory _$HomeResponseDtoCopyWith(
          _HomeResponseDto value, $Res Function(_HomeResponseDto) _then) =
      __$HomeResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'arrStory') List<StoryDto> stories});
}

/// @nodoc
class __$HomeResponseDtoCopyWithImpl<$Res>
    implements _$HomeResponseDtoCopyWith<$Res> {
  __$HomeResponseDtoCopyWithImpl(this._self, this._then);

  final _HomeResponseDto _self;
  final $Res Function(_HomeResponseDto) _then;

  /// Create a copy of HomeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stories = null,
  }) {
    return _then(_HomeResponseDto(
      stories: null == stories
          ? _self._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryDto>,
    ));
  }
}

// dart format on
