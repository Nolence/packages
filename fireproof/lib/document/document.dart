import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';

typedef RestoreFunction<T> = Future<void> Function();

/// To generate updated model code, run:
/// flutter pub run build_runner build
@freezed
class Document<T extends Object?> with _$Document<T> {
  const Document._();
  const factory Document({
    required DocumentReference<T> reference,
    required T data,
  }) = _Document<T>;

  static Document<T?> fromSnapshot<T>(DocumentSnapshot<T?> snapshot) {
    return Document<T?>(
      data: snapshot.data(),
      reference: snapshot.reference,
    );
  }

  static Document<T> fromSnapshotForce<T>(DocumentSnapshot<T> snapshot) {
    assert(snapshot.exists);

    return Document<T>(
      data: snapshot.data()!,
      reference: snapshot.reference,
    );
  }

  static Document<T> fromQuerySnapshot<T>(QueryDocumentSnapshot<T> snapshot) {
    return Document<T>(
      data: snapshot.data(),
      reference: snapshot.reference,
    );
  }

  Future<RestoreFunction> delete() async {
    await reference.delete();

    return () async {
      await reference.set(data);
    };
  }

  Future<RestoreFunction> set(T value) async {
    await reference.set(value);

    return () async {
      await reference.set(data);
    };
  }

  Future<RestoreFunction> upsert(T value) async {
    await reference.set(
      value,
      SetOptions(merge: true),
    );

    return () async {
      await reference.set(data);
    };
  }

  String get id => reference.id;

  Document<R> cast<R extends T>({
    required R data,
    required FromFirestore<R> fromFirestore,
    required ToFirestore<R> toFirestore,
  }) {
    return Document<R>(
      data: data,
      reference: reference.withConverter<R>(
        fromFirestore: fromFirestore,
        toFirestore: toFirestore,
      ),
    );
  }
}
