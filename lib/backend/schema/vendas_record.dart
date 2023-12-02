import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendasRecord extends FirestoreRecord {
  VendasRecord._(
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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeproduto = snapshotData['nomeproduto'] as String?;
    _datavenda = snapshotData['datavenda'] as DateTime?;
    _quantidade = snapshotData['quantidade'] as String?;
    _valorvenda = snapshotData['valorvenda'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('vendas')
          : FirebaseFirestore.instance.collectionGroup('vendas');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('vendas').doc();

  static Stream<VendasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendasRecord.fromSnapshot(s));

  static Future<VendasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendasRecord.fromSnapshot(s));

  static VendasRecord fromSnapshot(DocumentSnapshot snapshot) => VendasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendasRecordData({
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

class VendasRecordDocumentEquality implements Equality<VendasRecord> {
  const VendasRecordDocumentEquality();

  @override
  bool equals(VendasRecord? e1, VendasRecord? e2) {
    return e1?.nomeproduto == e2?.nomeproduto &&
        e1?.datavenda == e2?.datavenda &&
        e1?.quantidade == e2?.quantidade &&
        e1?.valorvenda == e2?.valorvenda;
  }

  @override
  int hash(VendasRecord? e) => const ListEquality()
      .hash([e?.nomeproduto, e?.datavenda, e?.quantidade, e?.valorvenda]);

  @override
  bool isValidKey(Object? o) => o is VendasRecord;
}
