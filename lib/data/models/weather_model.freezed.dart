// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
class _$WeatherModelTearOff {
  const _$WeatherModelTearOff();

  _WeatherModel call(dynamic temp, dynamic pressure, dynamic humidity,
      dynamic temp_max, dynamic temp_min) {
    return _WeatherModel(
      temp,
      pressure,
      humidity,
      temp_max,
      temp_min,
    );
  }

  WeatherModel fromJson(Map<String, Object?> json) {
    return WeatherModel.fromJson(json);
  }
}

/// @nodoc
const $WeatherModel = _$WeatherModelTearOff();

/// @nodoc
mixin _$WeatherModel {
  dynamic get temp => throw _privateConstructorUsedError;
  dynamic get pressure => throw _privateConstructorUsedError;
  dynamic get humidity => throw _privateConstructorUsedError;
  dynamic get temp_max => throw _privateConstructorUsedError;
  dynamic get temp_min => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res>;
  $Res call(
      {dynamic temp,
      dynamic pressure,
      dynamic humidity,
      dynamic temp_max,
      dynamic temp_min});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res> implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  final WeatherModel _value;
  // ignore: unused_field
  final $Res Function(WeatherModel) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? temp_max = freezed,
    Object? temp_min = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as dynamic,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      temp_max: temp_max == freezed
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as dynamic,
      temp_min: temp_min == freezed
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(
          _WeatherModel value, $Res Function(_WeatherModel) then) =
      __$WeatherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic temp,
      dynamic pressure,
      dynamic humidity,
      dynamic temp_max,
      dynamic temp_min});
}

/// @nodoc
class __$WeatherModelCopyWithImpl<$Res> extends _$WeatherModelCopyWithImpl<$Res>
    implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(
      _WeatherModel _value, $Res Function(_WeatherModel) _then)
      : super(_value, (v) => _then(v as _WeatherModel));

  @override
  _WeatherModel get _value => super._value as _WeatherModel;

  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? temp_max = freezed,
    Object? temp_min = freezed,
  }) {
    return _then(_WeatherModel(
      temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as dynamic,
      humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      temp_max == freezed
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as dynamic,
      temp_min == freezed
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel extends _WeatherModel {
  const _$_WeatherModel(
      this.temp, this.pressure, this.humidity, this.temp_max, this.temp_min)
      : super._();

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  final dynamic temp;
  @override
  final dynamic pressure;
  @override
  final dynamic humidity;
  @override
  final dynamic temp_max;
  @override
  final dynamic temp_min;

  @override
  String toString() {
    return 'WeatherModel(temp: $temp, pressure: $pressure, humidity: $humidity, temp_max: $temp_max, temp_min: $temp_min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherModel &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.temp_max, temp_max) &&
            const DeepCollectionEquality().equals(other.temp_min, temp_min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(temp_max),
      const DeepCollectionEquality().hash(temp_min));

  @JsonKey(ignore: true)
  @override
  _$WeatherModelCopyWith<_WeatherModel> get copyWith =>
      __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(this);
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel(dynamic temp, dynamic pressure, dynamic humidity,
      dynamic temp_max, dynamic temp_min) = _$_WeatherModel;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  dynamic get temp;
  @override
  dynamic get pressure;
  @override
  dynamic get humidity;
  @override
  dynamic get temp_max;
  @override
  dynamic get temp_min;
  @override
  @JsonKey(ignore: true)
  _$WeatherModelCopyWith<_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}
