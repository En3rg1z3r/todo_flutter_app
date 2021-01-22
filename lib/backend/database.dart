import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  static pushTodo(String email, String todo) {
    FirebaseFirestore.instance
        .collection("todoes")
        .add({"email": email, "todo": todo});
  }

  static pullTodo(String email) {
    FirebaseFirestore.instance
        .collection("todoes")
        .where("email", isEqualTo: email)
        .snapshots();
  }
}
