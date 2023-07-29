import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PizzasRecord extends FirestoreRecord {
  PizzasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "PizzaName" field.
  String? _pizzaName;
  String get pizzaName => _pizzaName ?? '';
  bool hasPizzaName() => _pizzaName != null;

  // "PizzaPicture" field.
  String? _pizzaPicture;
  String get pizzaPicture => _pizzaPicture ?? '';
  bool hasPizzaPicture() => _pizzaPicture != null;

  // "Index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "Ingerdients" field.
  String? _ingerdients;
  String get ingerdients => _ingerdients ?? '';
  bool hasIngerdients() => _ingerdients != null;

  // "Sizes" field.
  int? _sizes;
  int get sizes => _sizes ?? 0;
  bool hasSizes() => _sizes != null;

  // "Addons" field.
  List<String>? _addons;
  List<String> get addons => _addons ?? const [];
  bool hasAddons() => _addons != null;

  void _initializeFields() {
    _category = snapshotData['Category'] as String?;
    _pizzaName = snapshotData['PizzaName'] as String?;
    _pizzaPicture = snapshotData['PizzaPicture'] as String?;
    _index = castToType<int>(snapshotData['Index']);
    _price = castToType<double>(snapshotData['Price']);
    _ingerdients = snapshotData['Ingerdients'] as String?;
    _sizes = castToType<int>(snapshotData['Sizes']);
    _addons = getDataList(snapshotData['Addons']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pizzas');

  static Stream<PizzasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PizzasRecord.fromSnapshot(s));

  static Future<PizzasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PizzasRecord.fromSnapshot(s));

  static PizzasRecord fromSnapshot(DocumentSnapshot snapshot) => PizzasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PizzasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PizzasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PizzasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PizzasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPizzasRecordData({
  String? category,
  String? pizzaName,
  String? pizzaPicture,
  int? index,
  double? price,
  String? ingerdients,
  int? sizes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Category': category,
      'PizzaName': pizzaName,
      'PizzaPicture': pizzaPicture,
      'Index': index,
      'Price': price,
      'Ingerdients': ingerdients,
      'Sizes': sizes,
    }.withoutNulls,
  );

  return firestoreData;
}

class PizzasRecordDocumentEquality implements Equality<PizzasRecord> {
  const PizzasRecordDocumentEquality();

  @override
  bool equals(PizzasRecord? e1, PizzasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.category == e2?.category &&
        e1?.pizzaName == e2?.pizzaName &&
        e1?.pizzaPicture == e2?.pizzaPicture &&
        e1?.index == e2?.index &&
        e1?.price == e2?.price &&
        e1?.ingerdients == e2?.ingerdients &&
        e1?.sizes == e2?.sizes &&
        listEquality.equals(e1?.addons, e2?.addons);
  }

  @override
  int hash(PizzasRecord? e) => const ListEquality().hash([
        e?.category,
        e?.pizzaName,
        e?.pizzaPicture,
        e?.index,
        e?.price,
        e?.ingerdients,
        e?.sizes,
        e?.addons
      ]);

  @override
  bool isValidKey(Object? o) => o is PizzasRecord;
}
