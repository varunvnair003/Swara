import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'songs_record.g.dart';

abstract class SongsRecord implements Built<SongsRecord, SongsRecordBuilder> {
  static Serializer<SongsRecord> get serializer => _$songsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'song_name')
  String get songName;

  @nullable
  @BuiltValueField(wireName: 'song_picture')
  String get songPicture;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  String get pianosong;

  @nullable
  String get guitarsong;

  @nullable
  String get drumsong;

  @nullable
  String get vocals;

  @nullable
  String get pianosheet;

  @nullable
  String get guitarsheet;

  @nullable
  String get drumsheet;

  @nullable
  @BuiltValueField(wireName: 'song_url')
  String get songUrl;

  @nullable
  String get vocalbg;

  @nullable
  @BuiltValueField(wireName: 'liked_by')
  BuiltList<DocumentReference> get likedBy;

  @nullable
  @BuiltValueField(wireName: 'Released')
  DateTime get released;

  @nullable
  @BuiltValueField(wireName: 'Singer')
  String get singer;

  @nullable
  @BuiltValueField(wireName: 'Genre')
  String get genre;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SongsRecordBuilder builder) => builder
    ..songName = ''
    ..songPicture = ''
    ..pianosong = ''
    ..guitarsong = ''
    ..drumsong = ''
    ..vocals = ''
    ..pianosheet = ''
    ..guitarsheet = ''
    ..drumsheet = ''
    ..songUrl = ''
    ..vocalbg = ''
    ..likedBy = ListBuilder()
    ..singer = ''
    ..genre = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('songs');

  static Stream<SongsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SongsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SongsRecord._();
  factory SongsRecord([void Function(SongsRecordBuilder) updates]) =
      _$SongsRecord;

  static SongsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSongsRecordData({
  String songName,
  String songPicture,
  DateTime createdAt,
  String pianosong,
  String guitarsong,
  String drumsong,
  String vocals,
  String pianosheet,
  String guitarsheet,
  String drumsheet,
  String songUrl,
  String vocalbg,
  DateTime released,
  String singer,
  String genre,
}) =>
    serializers.toFirestore(
        SongsRecord.serializer,
        SongsRecord((s) => s
          ..songName = songName
          ..songPicture = songPicture
          ..createdAt = createdAt
          ..pianosong = pianosong
          ..guitarsong = guitarsong
          ..drumsong = drumsong
          ..vocals = vocals
          ..pianosheet = pianosheet
          ..guitarsheet = guitarsheet
          ..drumsheet = drumsheet
          ..songUrl = songUrl
          ..vocalbg = vocalbg
          ..likedBy = null
          ..released = released
          ..singer = singer
          ..genre = genre));
