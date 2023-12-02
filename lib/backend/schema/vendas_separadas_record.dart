import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendasSeparadasRecord extends FirestoreRecord {
  VendasSeparadasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeproduto" field.
  String? _nomeproduto;
  String get nomeproduto => _nomeproduto ?? '';
  bool hasNomeproduto() => _nomeproduto != null;

  // "datavenda" field.
  DateTime? _datavenda;
  DateTime? get datavenda => _datavenda;
  bool hasDatavenda() => _datavenda != null;

  // "quantidade" field.
  String? _quantidade;
  String get quantidade => _quantidade ?? '';
  bool hasQuantidade() => _quantidade != null;

  // "valorvenda" field.
  String? _valorvenda;
  String get valorvenda => _valorvenda ?? '';
  bool hasValorvenda() => _valorvenda != null;

  void _initializeFields() {
    _nomeproduto = snapshotData['nomeproduto'] as String?;
    _datavenda = snapshotData['datavenda'] as DateTime?;
    _quantidade = snapshotData['quantidade'] as String?;
    _valorvenda = snapshotData['valorvenda'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vendasSeparadas');

  static Stream<VendasSeparadasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendasSeparadasRecord.fromSnapshot(s));

  static Future<VendasSeparadasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendasSeparadasRecord.fromSnapshot(s));

  static VendasSeparadasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VendasSeparadasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendasSeparadasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendasSeparadasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendasSeparadasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendasSeparadasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendasSeparadasRecordData({
  String? nomeproduto,
  DateTime? datavenda,
  String? quantidade,
  String? valorvenda,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeproduto': nomeproduto,
      'datavenda': datavenda,
      'quantidade': quantidade,
      'valorvenda': valorvenda,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendasSeparadasRecordDocumentEquality
    implements Equality<VendasSeparadasRecord> {
  const VendasSeparadasRecordDocumentEquality();

  @override
  bool equals(VendasSeparadasRecord? e1, VendasSeparadasRecord? e2) {
    return e1?.nomeproduto == e2?.nomeproduto &&
        e1?.datavenda == e2?.datavenda &&
        e1?.quantidade == e2?.quantidade &&
        e1?.valorvenda == e2?.valorvenda;
  }

  @override
  int hash(VendasSeparadasRecord? e) => const ListEquality()
      .hash([e?.nomeproduto, e?.datavenda, e?.quantidade, e?.valorvenda]);

  @override
  bool isValidKey(Object? o) => o is VendasSeparadasRecord;
}
