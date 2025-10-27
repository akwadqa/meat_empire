// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentInfoEntity _$PaymentInfoEntityFromJson(Map<String, dynamic> json) {
  return _PaymentInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$PaymentInfoEntity {
  String get paymentId => throw _privateConstructorUsedError;
  String get payment => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInfoEntityCopyWith<PaymentInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInfoEntityCopyWith<$Res> {
  factory $PaymentInfoEntityCopyWith(
    PaymentInfoEntity value,
    $Res Function(PaymentInfoEntity) then,
  ) = _$PaymentInfoEntityCopyWithImpl<$Res, PaymentInfoEntity>;
  @useResult
  $Res call({
    String paymentId,
    String payment,
    String? description,
    String? instructions,
    String? image,
  });
}

/// @nodoc
class _$PaymentInfoEntityCopyWithImpl<$Res, $Val extends PaymentInfoEntity>
    implements $PaymentInfoEntityCopyWith<$Res> {
  _$PaymentInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? payment = null,
    Object? description = freezed,
    Object? instructions = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _value.copyWith(
            paymentId: null == paymentId
                ? _value.paymentId
                : paymentId // ignore: cast_nullable_to_non_nullable
                      as String,
            payment: null == payment
                ? _value.payment
                : payment // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            instructions: freezed == instructions
                ? _value.instructions
                : instructions // ignore: cast_nullable_to_non_nullable
                      as String?,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentInfoEntityImplCopyWith<$Res>
    implements $PaymentInfoEntityCopyWith<$Res> {
  factory _$$PaymentInfoEntityImplCopyWith(
    _$PaymentInfoEntityImpl value,
    $Res Function(_$PaymentInfoEntityImpl) then,
  ) = __$$PaymentInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String paymentId,
    String payment,
    String? description,
    String? instructions,
    String? image,
  });
}

/// @nodoc
class __$$PaymentInfoEntityImplCopyWithImpl<$Res>
    extends _$PaymentInfoEntityCopyWithImpl<$Res, _$PaymentInfoEntityImpl>
    implements _$$PaymentInfoEntityImplCopyWith<$Res> {
  __$$PaymentInfoEntityImplCopyWithImpl(
    _$PaymentInfoEntityImpl _value,
    $Res Function(_$PaymentInfoEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentId = null,
    Object? payment = null,
    Object? description = freezed,
    Object? instructions = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _$PaymentInfoEntityImpl(
        paymentId: null == paymentId
            ? _value.paymentId
            : paymentId // ignore: cast_nullable_to_non_nullable
                  as String,
        payment: null == payment
            ? _value.payment
            : payment // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        instructions: freezed == instructions
            ? _value.instructions
            : instructions // ignore: cast_nullable_to_non_nullable
                  as String?,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PaymentInfoEntityImpl
    with DiagnosticableTreeMixin
    implements _PaymentInfoEntity {
  const _$PaymentInfoEntityImpl({
    required this.paymentId,
    required this.payment,
    this.description,
    this.instructions,
    this.image,
  });

  factory _$PaymentInfoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInfoEntityImplFromJson(json);

  @override
  final String paymentId;
  @override
  final String payment;
  @override
  final String? description;
  @override
  final String? instructions;
  @override
  final String? image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentInfoEntity(paymentId: $paymentId, payment: $payment, description: $description, instructions: $instructions, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentInfoEntity'))
      ..add(DiagnosticsProperty('paymentId', paymentId))
      ..add(DiagnosticsProperty('payment', payment))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('instructions', instructions))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInfoEntityImpl &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    paymentId,
    payment,
    description,
    instructions,
    image,
  );

  /// Create a copy of PaymentInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInfoEntityImplCopyWith<_$PaymentInfoEntityImpl> get copyWith =>
      __$$PaymentInfoEntityImplCopyWithImpl<_$PaymentInfoEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _PaymentInfoEntity implements PaymentInfoEntity {
  const factory _PaymentInfoEntity({
    required final String paymentId,
    required final String payment,
    final String? description,
    final String? instructions,
    final String? image,
  }) = _$PaymentInfoEntityImpl;

  factory _PaymentInfoEntity.fromJson(Map<String, dynamic> json) =
      _$PaymentInfoEntityImpl.fromJson;

  @override
  String get paymentId;
  @override
  String get payment;
  @override
  String? get description;
  @override
  String? get instructions;
  @override
  String? get image;

  /// Create a copy of PaymentInfoEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInfoEntityImplCopyWith<_$PaymentInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
