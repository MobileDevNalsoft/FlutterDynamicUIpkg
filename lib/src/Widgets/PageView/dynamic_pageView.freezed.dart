// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_pageView.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicPageView _$DynamicPageViewFromJson(Map<String, dynamic> json) {
  return _DynamicPageView.fromJson(json);
}

/// @nodoc
mixin _$DynamicPageView {
  Axis get scrollDirection => throw _privateConstructorUsedError;
  bool get reverse => throw _privateConstructorUsedError;
  dynamic get controller => throw _privateConstructorUsedError;
  DynamicScrollPhysics? get physics => throw _privateConstructorUsedError;
  bool get pageSnapping => throw _privateConstructorUsedError;
  String? get onPageChanged => throw _privateConstructorUsedError;
  DragStartBehavior get dragStartBehavior => throw _privateConstructorUsedError;
  bool get allowImplicitScrolling => throw _privateConstructorUsedError;
  String? get restorationId => throw _privateConstructorUsedError;
  Clip get clipBehavior => throw _privateConstructorUsedError;
  bool get padEnds => throw _privateConstructorUsedError;
  int get initialPage => throw _privateConstructorUsedError;
  dynamic get keepPage => throw _privateConstructorUsedError;
  double get viewportFraction => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;
  String? get findChildIndexCallback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DynamicPageViewCopyWith<DynamicPageView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicPageViewCopyWith<$Res> {
  factory $DynamicPageViewCopyWith(
          DynamicPageView value, $Res Function(DynamicPageView) then) =
      _$DynamicPageViewCopyWithImpl<$Res, DynamicPageView>;
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      dynamic controller,
      DynamicScrollPhysics? physics,
      bool pageSnapping,
      String? onPageChanged,
      DragStartBehavior dragStartBehavior,
      bool allowImplicitScrolling,
      String? restorationId,
      Clip clipBehavior,
      bool padEnds,
      int initialPage,
      dynamic keepPage,
      double viewportFraction,
      List<Map<String, dynamic>> children,
      String? findChildIndexCallback});
}

/// @nodoc
class _$DynamicPageViewCopyWithImpl<$Res, $Val extends DynamicPageView>
    implements $DynamicPageViewCopyWith<$Res> {
  _$DynamicPageViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? controller = freezed,
    Object? physics = freezed,
    Object? pageSnapping = null,
    Object? onPageChanged = freezed,
    Object? dragStartBehavior = null,
    Object? allowImplicitScrolling = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
    Object? padEnds = null,
    Object? initialPage = null,
    Object? keepPage = freezed,
    Object? viewportFraction = null,
    Object? children = null,
    Object? findChildIndexCallback = freezed,
  }) {
    return _then(_value.copyWith(
      scrollDirection: null == scrollDirection
          ? _value.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as dynamic,
      physics: freezed == physics
          ? _value.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as DynamicScrollPhysics?,
      pageSnapping: null == pageSnapping
          ? _value.pageSnapping
          : pageSnapping // ignore: cast_nullable_to_non_nullable
              as bool,
      onPageChanged: freezed == onPageChanged
          ? _value.onPageChanged
          : onPageChanged // ignore: cast_nullable_to_non_nullable
              as String?,
      dragStartBehavior: null == dragStartBehavior
          ? _value.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      allowImplicitScrolling: null == allowImplicitScrolling
          ? _value.allowImplicitScrolling
          : allowImplicitScrolling // ignore: cast_nullable_to_non_nullable
              as bool,
      restorationId: freezed == restorationId
          ? _value.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      padEnds: null == padEnds
          ? _value.padEnds
          : padEnds // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPage: null == initialPage
          ? _value.initialPage
          : initialPage // ignore: cast_nullable_to_non_nullable
              as int,
      keepPage: freezed == keepPage
          ? _value.keepPage
          : keepPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      viewportFraction: null == viewportFraction
          ? _value.viewportFraction
          : viewportFraction // ignore: cast_nullable_to_non_nullable
              as double,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      findChildIndexCallback: freezed == findChildIndexCallback
          ? _value.findChildIndexCallback
          : findChildIndexCallback // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicPageViewImplCopyWith<$Res>
    implements $DynamicPageViewCopyWith<$Res> {
  factory _$$DynamicPageViewImplCopyWith(_$DynamicPageViewImpl value,
          $Res Function(_$DynamicPageViewImpl) then) =
      __$$DynamicPageViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Axis scrollDirection,
      bool reverse,
      dynamic controller,
      DynamicScrollPhysics? physics,
      bool pageSnapping,
      String? onPageChanged,
      DragStartBehavior dragStartBehavior,
      bool allowImplicitScrolling,
      String? restorationId,
      Clip clipBehavior,
      bool padEnds,
      int initialPage,
      dynamic keepPage,
      double viewportFraction,
      List<Map<String, dynamic>> children,
      String? findChildIndexCallback});
}

/// @nodoc
class __$$DynamicPageViewImplCopyWithImpl<$Res>
    extends _$DynamicPageViewCopyWithImpl<$Res, _$DynamicPageViewImpl>
    implements _$$DynamicPageViewImplCopyWith<$Res> {
  __$$DynamicPageViewImplCopyWithImpl(
      _$DynamicPageViewImpl _value, $Res Function(_$DynamicPageViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrollDirection = null,
    Object? reverse = null,
    Object? controller = freezed,
    Object? physics = freezed,
    Object? pageSnapping = null,
    Object? onPageChanged = freezed,
    Object? dragStartBehavior = null,
    Object? allowImplicitScrolling = null,
    Object? restorationId = freezed,
    Object? clipBehavior = null,
    Object? padEnds = null,
    Object? initialPage = null,
    Object? keepPage = freezed,
    Object? viewportFraction = null,
    Object? children = null,
    Object? findChildIndexCallback = freezed,
  }) {
    return _then(_$DynamicPageViewImpl(
      scrollDirection: null == scrollDirection
          ? _value.scrollDirection
          : scrollDirection // ignore: cast_nullable_to_non_nullable
              as Axis,
      reverse: null == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as bool,
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as dynamic,
      physics: freezed == physics
          ? _value.physics
          : physics // ignore: cast_nullable_to_non_nullable
              as DynamicScrollPhysics?,
      pageSnapping: null == pageSnapping
          ? _value.pageSnapping
          : pageSnapping // ignore: cast_nullable_to_non_nullable
              as bool,
      onPageChanged: freezed == onPageChanged
          ? _value.onPageChanged
          : onPageChanged // ignore: cast_nullable_to_non_nullable
              as String?,
      dragStartBehavior: null == dragStartBehavior
          ? _value.dragStartBehavior
          : dragStartBehavior // ignore: cast_nullable_to_non_nullable
              as DragStartBehavior,
      allowImplicitScrolling: null == allowImplicitScrolling
          ? _value.allowImplicitScrolling
          : allowImplicitScrolling // ignore: cast_nullable_to_non_nullable
              as bool,
      restorationId: freezed == restorationId
          ? _value.restorationId
          : restorationId // ignore: cast_nullable_to_non_nullable
              as String?,
      clipBehavior: null == clipBehavior
          ? _value.clipBehavior
          : clipBehavior // ignore: cast_nullable_to_non_nullable
              as Clip,
      padEnds: null == padEnds
          ? _value.padEnds
          : padEnds // ignore: cast_nullable_to_non_nullable
              as bool,
      initialPage: null == initialPage
          ? _value.initialPage
          : initialPage // ignore: cast_nullable_to_non_nullable
              as int,
      keepPage: freezed == keepPage ? _value.keepPage! : keepPage,
      viewportFraction: null == viewportFraction
          ? _value.viewportFraction
          : viewportFraction // ignore: cast_nullable_to_non_nullable
              as double,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      findChildIndexCallback: freezed == findChildIndexCallback
          ? _value.findChildIndexCallback
          : findChildIndexCallback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicPageViewImpl implements _DynamicPageView {
  const _$DynamicPageViewImpl(
      {this.scrollDirection = Axis.horizontal,
      this.reverse = false,
      this.controller,
      this.physics,
      this.pageSnapping = true,
      this.onPageChanged,
      this.dragStartBehavior = DragStartBehavior.start,
      this.allowImplicitScrolling = false,
      this.restorationId,
      this.clipBehavior = Clip.hardEdge,
      this.padEnds = true,
      this.initialPage = 0,
      this.keepPage = true,
      this.viewportFraction = 1.0,
      final List<Map<String, dynamic>> children = const [],
      this.findChildIndexCallback})
      : _children = children;

  factory _$DynamicPageViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicPageViewImplFromJson(json);

  @override
  @JsonKey()
  final Axis scrollDirection;
  @override
  @JsonKey()
  final bool reverse;
  @override
  final dynamic controller;
  @override
  final DynamicScrollPhysics? physics;
  @override
  @JsonKey()
  final bool pageSnapping;
  @override
  final String? onPageChanged;
  @override
  @JsonKey()
  final DragStartBehavior dragStartBehavior;
  @override
  @JsonKey()
  final bool allowImplicitScrolling;
  @override
  final String? restorationId;
  @override
  @JsonKey()
  final Clip clipBehavior;
  @override
  @JsonKey()
  final bool padEnds;
  @override
  @JsonKey()
  final int initialPage;
  @override
  @JsonKey()
  final dynamic keepPage;
  @override
  @JsonKey()
  final double viewportFraction;
  final List<Map<String, dynamic>> _children;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final String? findChildIndexCallback;

  @override
  String toString() {
    return 'DynamicPageView(scrollDirection: $scrollDirection, reverse: $reverse, controller: $controller, physics: $physics, pageSnapping: $pageSnapping, onPageChanged: $onPageChanged, dragStartBehavior: $dragStartBehavior, allowImplicitScrolling: $allowImplicitScrolling, restorationId: $restorationId, clipBehavior: $clipBehavior, padEnds: $padEnds, initialPage: $initialPage, keepPage: $keepPage, viewportFraction: $viewportFraction, children: $children, findChildIndexCallback: $findChildIndexCallback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicPageViewImpl &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            const DeepCollectionEquality()
                .equals(other.controller, controller) &&
            (identical(other.physics, physics) || other.physics == physics) &&
            (identical(other.pageSnapping, pageSnapping) ||
                other.pageSnapping == pageSnapping) &&
            (identical(other.onPageChanged, onPageChanged) ||
                other.onPageChanged == onPageChanged) &&
            (identical(other.dragStartBehavior, dragStartBehavior) ||
                other.dragStartBehavior == dragStartBehavior) &&
            (identical(other.allowImplicitScrolling, allowImplicitScrolling) ||
                other.allowImplicitScrolling == allowImplicitScrolling) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.padEnds, padEnds) || other.padEnds == padEnds) &&
            (identical(other.initialPage, initialPage) ||
                other.initialPage == initialPage) &&
            const DeepCollectionEquality().equals(other.keepPage, keepPage) &&
            (identical(other.viewportFraction, viewportFraction) ||
                other.viewportFraction == viewportFraction) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.findChildIndexCallback, findChildIndexCallback) ||
                other.findChildIndexCallback == findChildIndexCallback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      scrollDirection,
      reverse,
      const DeepCollectionEquality().hash(controller),
      physics,
      pageSnapping,
      onPageChanged,
      dragStartBehavior,
      allowImplicitScrolling,
      restorationId,
      clipBehavior,
      padEnds,
      initialPage,
      const DeepCollectionEquality().hash(keepPage),
      viewportFraction,
      const DeepCollectionEquality().hash(_children),
      findChildIndexCallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicPageViewImplCopyWith<_$DynamicPageViewImpl> get copyWith =>
      __$$DynamicPageViewImplCopyWithImpl<_$DynamicPageViewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicPageViewImplToJson(
      this,
    );
  }
}

abstract class _DynamicPageView implements DynamicPageView {
  const factory _DynamicPageView(
      {final Axis scrollDirection,
      final bool reverse,
      final dynamic controller,
      final DynamicScrollPhysics? physics,
      final bool pageSnapping,
      final String? onPageChanged,
      final DragStartBehavior dragStartBehavior,
      final bool allowImplicitScrolling,
      final String? restorationId,
      final Clip clipBehavior,
      final bool padEnds,
      final int initialPage,
      final dynamic keepPage,
      final double viewportFraction,
      final List<Map<String, dynamic>> children,
      final String? findChildIndexCallback}) = _$DynamicPageViewImpl;

  factory _DynamicPageView.fromJson(Map<String, dynamic> json) =
      _$DynamicPageViewImpl.fromJson;

  @override
  Axis get scrollDirection;
  @override
  bool get reverse;
  @override
  dynamic get controller;
  @override
  DynamicScrollPhysics? get physics;
  @override
  bool get pageSnapping;
  @override
  String? get onPageChanged;
  @override
  DragStartBehavior get dragStartBehavior;
  @override
  bool get allowImplicitScrolling;
  @override
  String? get restorationId;
  @override
  Clip get clipBehavior;
  @override
  bool get padEnds;
  @override
  int get initialPage;
  @override
  dynamic get keepPage;
  @override
  double get viewportFraction;
  @override
  List<Map<String, dynamic>> get children;
  @override
  String? get findChildIndexCallback;
  @override
  @JsonKey(ignore: true)
  _$$DynamicPageViewImplCopyWith<_$DynamicPageViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
