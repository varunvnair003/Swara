// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'songs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SongsRecord> _$songsRecordSerializer = new _$SongsRecordSerializer();

class _$SongsRecordSerializer implements StructuredSerializer<SongsRecord> {
  @override
  final Iterable<Type> types = const [SongsRecord, _$SongsRecord];
  @override
  final String wireName = 'SongsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SongsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.songName;
    if (value != null) {
      result
        ..add('song_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.songPicture;
    if (value != null) {
      result
        ..add('song_picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pianosong;
    if (value != null) {
      result
        ..add('pianosong')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guitarsong;
    if (value != null) {
      result
        ..add('guitarsong')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.drumsong;
    if (value != null) {
      result
        ..add('drumsong')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vocals;
    if (value != null) {
      result
        ..add('vocals')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pianosheet;
    if (value != null) {
      result
        ..add('pianosheet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.guitarsheet;
    if (value != null) {
      result
        ..add('guitarsheet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.drumsheet;
    if (value != null) {
      result
        ..add('drumsheet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.songUrl;
    if (value != null) {
      result
        ..add('song_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vocalbg;
    if (value != null) {
      result
        ..add('vocalbg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likedBy;
    if (value != null) {
      result
        ..add('liked_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.released;
    if (value != null) {
      result
        ..add('Released')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.singer;
    if (value != null) {
      result
        ..add('Singer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genre;
    if (value != null) {
      result
        ..add('Genre')
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
  SongsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SongsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'song_name':
          result.songName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'song_picture':
          result.songPicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'pianosong':
          result.pianosong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'guitarsong':
          result.guitarsong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'drumsong':
          result.drumsong = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vocals':
          result.vocals = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pianosheet':
          result.pianosheet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'guitarsheet':
          result.guitarsheet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'drumsheet':
          result.drumsheet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'song_url':
          result.songUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vocalbg':
          result.vocalbg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'liked_by':
          result.likedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'Released':
          result.released = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Singer':
          result.singer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Genre':
          result.genre = serializers.deserialize(value,
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

class _$SongsRecord extends SongsRecord {
  @override
  final String songName;
  @override
  final String songPicture;
  @override
  final DateTime createdAt;
  @override
  final String pianosong;
  @override
  final String guitarsong;
  @override
  final String drumsong;
  @override
  final String vocals;
  @override
  final String pianosheet;
  @override
  final String guitarsheet;
  @override
  final String drumsheet;
  @override
  final String songUrl;
  @override
  final String vocalbg;
  @override
  final BuiltList<DocumentReference<Object>> likedBy;
  @override
  final DateTime released;
  @override
  final String singer;
  @override
  final String genre;
  @override
  final DocumentReference<Object> reference;

  factory _$SongsRecord([void Function(SongsRecordBuilder) updates]) =>
      (new SongsRecordBuilder()..update(updates)).build();

  _$SongsRecord._(
      {this.songName,
      this.songPicture,
      this.createdAt,
      this.pianosong,
      this.guitarsong,
      this.drumsong,
      this.vocals,
      this.pianosheet,
      this.guitarsheet,
      this.drumsheet,
      this.songUrl,
      this.vocalbg,
      this.likedBy,
      this.released,
      this.singer,
      this.genre,
      this.reference})
      : super._();

  @override
  SongsRecord rebuild(void Function(SongsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SongsRecordBuilder toBuilder() => new SongsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SongsRecord &&
        songName == other.songName &&
        songPicture == other.songPicture &&
        createdAt == other.createdAt &&
        pianosong == other.pianosong &&
        guitarsong == other.guitarsong &&
        drumsong == other.drumsong &&
        vocals == other.vocals &&
        pianosheet == other.pianosheet &&
        guitarsheet == other.guitarsheet &&
        drumsheet == other.drumsheet &&
        songUrl == other.songUrl &&
        vocalbg == other.vocalbg &&
        likedBy == other.likedBy &&
        released == other.released &&
        singer == other.singer &&
        genre == other.genre &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        songName
                                                                            .hashCode),
                                                                    songPicture
                                                                        .hashCode),
                                                                createdAt
                                                                    .hashCode),
                                                            pianosong.hashCode),
                                                        guitarsong.hashCode),
                                                    drumsong.hashCode),
                                                vocals.hashCode),
                                            pianosheet.hashCode),
                                        guitarsheet.hashCode),
                                    drumsheet.hashCode),
                                songUrl.hashCode),
                            vocalbg.hashCode),
                        likedBy.hashCode),
                    released.hashCode),
                singer.hashCode),
            genre.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SongsRecord')
          ..add('songName', songName)
          ..add('songPicture', songPicture)
          ..add('createdAt', createdAt)
          ..add('pianosong', pianosong)
          ..add('guitarsong', guitarsong)
          ..add('drumsong', drumsong)
          ..add('vocals', vocals)
          ..add('pianosheet', pianosheet)
          ..add('guitarsheet', guitarsheet)
          ..add('drumsheet', drumsheet)
          ..add('songUrl', songUrl)
          ..add('vocalbg', vocalbg)
          ..add('likedBy', likedBy)
          ..add('released', released)
          ..add('singer', singer)
          ..add('genre', genre)
          ..add('reference', reference))
        .toString();
  }
}

class SongsRecordBuilder implements Builder<SongsRecord, SongsRecordBuilder> {
  _$SongsRecord _$v;

  String _songName;
  String get songName => _$this._songName;
  set songName(String songName) => _$this._songName = songName;

  String _songPicture;
  String get songPicture => _$this._songPicture;
  set songPicture(String songPicture) => _$this._songPicture = songPicture;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _pianosong;
  String get pianosong => _$this._pianosong;
  set pianosong(String pianosong) => _$this._pianosong = pianosong;

  String _guitarsong;
  String get guitarsong => _$this._guitarsong;
  set guitarsong(String guitarsong) => _$this._guitarsong = guitarsong;

  String _drumsong;
  String get drumsong => _$this._drumsong;
  set drumsong(String drumsong) => _$this._drumsong = drumsong;

  String _vocals;
  String get vocals => _$this._vocals;
  set vocals(String vocals) => _$this._vocals = vocals;

  String _pianosheet;
  String get pianosheet => _$this._pianosheet;
  set pianosheet(String pianosheet) => _$this._pianosheet = pianosheet;

  String _guitarsheet;
  String get guitarsheet => _$this._guitarsheet;
  set guitarsheet(String guitarsheet) => _$this._guitarsheet = guitarsheet;

  String _drumsheet;
  String get drumsheet => _$this._drumsheet;
  set drumsheet(String drumsheet) => _$this._drumsheet = drumsheet;

  String _songUrl;
  String get songUrl => _$this._songUrl;
  set songUrl(String songUrl) => _$this._songUrl = songUrl;

  String _vocalbg;
  String get vocalbg => _$this._vocalbg;
  set vocalbg(String vocalbg) => _$this._vocalbg = vocalbg;

  ListBuilder<DocumentReference<Object>> _likedBy;
  ListBuilder<DocumentReference<Object>> get likedBy =>
      _$this._likedBy ??= new ListBuilder<DocumentReference<Object>>();
  set likedBy(ListBuilder<DocumentReference<Object>> likedBy) =>
      _$this._likedBy = likedBy;

  DateTime _released;
  DateTime get released => _$this._released;
  set released(DateTime released) => _$this._released = released;

  String _singer;
  String get singer => _$this._singer;
  set singer(String singer) => _$this._singer = singer;

  String _genre;
  String get genre => _$this._genre;
  set genre(String genre) => _$this._genre = genre;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SongsRecordBuilder() {
    SongsRecord._initializeBuilder(this);
  }

  SongsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _songName = $v.songName;
      _songPicture = $v.songPicture;
      _createdAt = $v.createdAt;
      _pianosong = $v.pianosong;
      _guitarsong = $v.guitarsong;
      _drumsong = $v.drumsong;
      _vocals = $v.vocals;
      _pianosheet = $v.pianosheet;
      _guitarsheet = $v.guitarsheet;
      _drumsheet = $v.drumsheet;
      _songUrl = $v.songUrl;
      _vocalbg = $v.vocalbg;
      _likedBy = $v.likedBy?.toBuilder();
      _released = $v.released;
      _singer = $v.singer;
      _genre = $v.genre;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SongsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SongsRecord;
  }

  @override
  void update(void Function(SongsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SongsRecord build() {
    _$SongsRecord _$result;
    try {
      _$result = _$v ??
          new _$SongsRecord._(
              songName: songName,
              songPicture: songPicture,
              createdAt: createdAt,
              pianosong: pianosong,
              guitarsong: guitarsong,
              drumsong: drumsong,
              vocals: vocals,
              pianosheet: pianosheet,
              guitarsheet: guitarsheet,
              drumsheet: drumsheet,
              songUrl: songUrl,
              vocalbg: vocalbg,
              likedBy: _likedBy?.build(),
              released: released,
              singer: singer,
              genre: genre,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'likedBy';
        _likedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SongsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
