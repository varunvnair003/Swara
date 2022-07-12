// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_request_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SongRequestRecord> _$songRequestRecordSerializer =
    new _$SongRequestRecordSerializer();

class _$SongRequestRecordSerializer
    implements StructuredSerializer<SongRequestRecord> {
  @override
  final Iterable<Type> types = const [SongRequestRecord, _$SongRequestRecord];
  @override
  final String wireName = 'SongRequestRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SongRequestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.songDetails;
    if (value != null) {
      result
        ..add('song_details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  SongRequestRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SongRequestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'song_details':
          result.songDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$SongRequestRecord extends SongRequestRecord {
  @override
  final String songDetails;
  @override
  final DocumentReference<Object> reference;

  factory _$SongRequestRecord(
          [void Function(SongRequestRecordBuilder) updates]) =>
      (new SongRequestRecordBuilder()..update(updates)).build();

  _$SongRequestRecord._({this.songDetails, this.reference}) : super._();

  @override
  SongRequestRecord rebuild(void Function(SongRequestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SongRequestRecordBuilder toBuilder() =>
      new SongRequestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SongRequestRecord &&
        songDetails == other.songDetails &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, songDetails.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SongRequestRecord')
          ..add('songDetails', songDetails)
          ..add('reference', reference))
        .toString();
  }
}

class SongRequestRecordBuilder
    implements Builder<SongRequestRecord, SongRequestRecordBuilder> {
  _$SongRequestRecord _$v;

  String _songDetails;
  String get songDetails => _$this._songDetails;
  set songDetails(String songDetails) => _$this._songDetails = songDetails;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SongRequestRecordBuilder() {
    SongRequestRecord._initializeBuilder(this);
  }

  SongRequestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _songDetails = $v.songDetails;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SongRequestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SongRequestRecord;
  }

  @override
  void update(void Function(SongRequestRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SongRequestRecord build() {
    final _$result = _$v ??
        new _$SongRequestRecord._(
            songDetails: songDetails, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
