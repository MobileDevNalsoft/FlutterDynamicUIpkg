// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_bottomNavigationBarItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicBottomNavigationBarItem _$DynamicBottomNavigationBarItemFromJson(
    Map<String, dynamic> json) {
  return _DynamicBottomNavigationBarItem.fromJson(json);
}

/// @nodoc
mixin _$DynamicBottomNavigationBarItem {
  Map<String, dynamic> get icon => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  Map<String, dynamic>? get activeIcon => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get tooltip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicBottomNavigationBarItemCopyWith<DynamicBottomNavigationBarItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicBottomNavigationBarItemCopyWith<$Res> {
  factory $DynamicBottomNavigationBarItemCopyWith(
          DynamicBottomNavigationBarItem value,
          $Res Function(DynamicBottomNavigationBarItem) then) =
      _$DynamicBottomNavigationBarItemCopyWithImpl<$Res,
          DynamicBottomNavigationBarItem>;
  @useResult
  $Res call(
      {Map<String, dynamic> icon,
      String label,
      Map<String, dynamic>? activeIcon,
      String? backgroundColor,
      String? tooltip});
}

/// @nodoc
class _$DynamicBottomNavigationBarItemCopyWithImpl<$Res,
        $Val extends DynamicBottomNavigationBarItem>
    implements $DynamicBottomNavigationBarItemCopyWith<$Res> {
  _$DynamicBottomNavigationBarItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
    Object? activeIcon = freezed,
    Object? backgroundColor = freezed,
    Object? tooltip = freezed,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      activeIcon: freezed == activeIcon
          ? _value.activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicBottomNavigationBarItemImplCopyWith<$Res>
    implements $DynamicBottomNavigationBarItemCopyWith<$Res> {
  factory _$$DynamicBottomNavigationBarItemImplCopyWith(
          _$DynamicBottomNavigationBarItemImpl value,
          $Res Function(_$DynamicBottomNavigationBarItemImpl) then) =
      __$$DynamicBottomNavigationBarItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> icon,
      String label,
      Map<String, dynamic>? activeIcon,
      String? backgroundColor,
      String? tooltip});
}

/// @nodoc
class __$$DynamicBottomNavigationBarItemImplCopyWithImpl<$Res>
    extends _$DynamicBottomNavigationBarItemCopyWithImpl<$Res,
        _$DynamicBottomNavigationBarItemImpl>
    implements _$$DynamicBottomNavigationBarItemImplCopyWith<$Res> {
  __$$DynamicBottomNavigationBarItemImplCopyWithImpl(
      _$DynamicBottomNavigationBarItemImpl _value,
      $Res Function(_$DynamicBottomNavigationBarItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
    Object? activeIcon = freezed,
    Object? backgroundColor = freezed,
    Object? tooltip = freezed,
  }) {
    return _then(_$DynamicBottomNavigationBarItemImpl(
      icon: null == icon
          ? _value._icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      activeIcon: freezed == activeIcon
          ? _value._activeIcon
          : activeIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      tooltip: freezed == tooltip
          ? _value.tooltip
          : tooltip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicBottomNavigationBarItemImpl
    implements _DynamicBottomNavigationBarItem {
  const _$DynamicBottomNavigationBarItemImpl(
      {required final Map<String, dynamic> icon,
      required this.label,
      final Map<String, dynamic>? activeIcon,
      this.backgroundColor,
      this.tooltip})
      : _icon = icon,
        _activeIcon = activeIcon;

  factory _$DynamicBottomNavigationBarItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DynamicBottomNavigationBarItemImplFromJson(json);

  final Map<String, dynamic> _icon;
  @override
  Map<String, dynamic> get icon {
    if (_icon is EqualUnmodifiableMapView) return _icon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_icon);
  }

  @override
  final String label;
  final Map<String, dynamic>? _activeIcon;
  @override
  Map<String, dynamic>? get activeIcon {
    final value = _activeIcon;
    if (value == null) return null;
    if (_activeIcon is EqualUnmodifiableMapView) return _activeIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? backgroundColor;
  @override
  final String? tooltip;

  @override
  String toString() {
    return 'DynamicBottomNavigationBarItem(icon: $icon, label: $label, activeIcon: $activeIcon, backgroundColor: $backgroundColor, tooltip: $tooltip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicBottomNavigationBarItemImpl &&
            const DeepCollectionEquality().equals(other._icon, _icon) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._activeIcon, _activeIcon) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_icon),
      label,
      const DeepCollectionEquality().hash(_activeIcon),
      backgroundColor,
      tooltip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicBottomNavigationBarItemImplCopyWith<
          _$DynamicBottomNavigationBarItemImpl>
      get copyWith => __$$DynamicBottomNavigationBarItemImplCopyWithImpl<
          _$DynamicBottomNavigationBarItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicBottomNavigationBarItemImplToJson(
      this,
    );
  }
}

abstract class _DynamicBottomNavigationBarItem
    implements DynamicBottomNavigationBarItem {
  const factory _DynamicBottomNavigationBarItem(
      {required final Map<String, dynamic> icon,
      required final String label,
      final Map<String, dynamic>? activeIcon,
      final String? backgroundColor,
      final String? tooltip}) = _$DynamicBottomNavigationBarItemImpl;

  factory _DynamicBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =
      _$DynamicBottomNavigationBarItemImpl.fromJson;

  @override
  Map<String, dynamic> get icon;
  @override
  String get label;
  @override
  Map<String, dynamic>? get activeIcon;
  @override
  String? get backgroundColor;
  @override
  String? get tooltip;
  @override
  @JsonKey(ignore: true)
  _$$DynamicBottomNavigationBarItemImplCopyWith<
          _$DynamicBottomNavigationBarItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
