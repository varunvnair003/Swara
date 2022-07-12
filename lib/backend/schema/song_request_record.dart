import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'song_request_record.g.dart';

abstract class SongRequestRecord
    implements Built<SongRequestRecord, SongRequestRecordBuilder> {
  static Serializer<SongRequestRecord> get serializer =>
      _$songRequestRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'song_details')
  String get songDetails;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SongRequestRecordBuilder builder) =>
      builder..songDetails = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('song_request');

  static Stream<SongRequestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SongRequestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SongRequestRecord._();
  factory SongRequestRecord([void Function(SongRequestRecordBuilder) updates]) =
      _$SongRequestRecord;

  static SongRequestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSongRequestRecordData({
  String songDetails,
}) =>
    serializers.toFirestore(SongRequestRecord.serializer,
        SongRequestRecord((s) => s..songDetails = songDetails));
