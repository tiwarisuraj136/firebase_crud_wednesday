import 'package:firebase_crud_wednesday/core/model/todo_model.dart';
import 'package:firebase_crud_wednesday/core/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page_controller.dart';

class HomePageView extends GetView<HomeController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () async {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body:  Obx(() {
        if (controller.todos.isEmpty) {
          return const Center(child: Text('No Data found'));
        }
        return ListView.builder(
          itemCount: controller.todos.length,
          itemBuilder: (context, index) {
            final todo = controller.todos[index];
            return ListTile(
              title: Text(todo.content),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: todo.isDone,
                    onChanged: (bool? value) {
                      print("todo id line 39");
                      print(value);
                      print(todo.id);
                      print("todo id 41");
                      controller.updateStatus(value!, todo.id);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      print('todo.id line 45');
                      print(todo.id);
                      print('todo.id line 47');
                      controller.deleteHrmData(todo.id);
                    },
                  ),
                ],
              ),
            );
          },
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RoutesConstant.addForm);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}