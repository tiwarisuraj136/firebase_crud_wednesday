
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud_wednesday/core/model/todo_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {


  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  var todos = <HrmModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    todos.bindStream(todoStream());
  }

  Stream<List<HrmModel>> todoStream() {
    return firebaseFirestore
        .collection('todos')
        .snapshots()
        .map((QuerySnapshot query) {
      List<HrmModel> todos = [];

      for (var todo in query.docs) {
        final hrmModel = HrmModel.fromDocumentSnapshot(todo);
        todos.add(hrmModel);
      }
      print('todos line 29');
      print(todos);
      print('todos line 31');
      return todos;
    });
  }



}






