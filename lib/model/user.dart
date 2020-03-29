import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String name;
  DocumentReference reference;

  User({this.id, this.name});

  User.fromMap(Map<String, dynamic> map, {this.reference}) {
    id = map["id"];
    name = map["name"];
  }

  User.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  toJson() {
    return {"id": id, "name": name};
  }
}
