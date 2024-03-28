import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "spaceID" field.
  DocumentReference? _spaceID;
  DocumentReference? get spaceID => _spaceID;
  bool hasSpaceID() => _spaceID != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "bookingID" field.
  int? _bookingID;
  int get bookingID => _bookingID ?? 0;
  bool hasBookingID() => _bookingID != null;

  void _initializeFields() {
    _spaceID = snapshotData['spaceID'] as DocumentReference?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _bookingID = castToType<int>(snapshotData['bookingID']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? spaceID,
  DocumentReference? userID,
  int? bookingID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'spaceID': spaceID,
      'userID': userID,
      'bookingID': bookingID,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.spaceID == e2?.spaceID &&
        e1?.userID == e2?.userID &&
        e1?.bookingID == e2?.bookingID;
  }

  @override
  int hash(BookingsRecord? e) =>
      const ListEquality().hash([e?.spaceID, e?.userID, e?.bookingID]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
