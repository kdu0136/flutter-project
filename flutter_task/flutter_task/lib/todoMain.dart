import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import './todo.dart';

class TodoMain extends StatefulWidget {
  @override
  _TodoMainState createState() => _TodoMainState();
}

class _TodoMainState extends State<TodoMain> {
  final _todoCollection = 'flutter_todo';
  var _todoController = TextEditingController();

  @override
  void dispose() {
    _todoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _todoController,
                  ),
                ),
                RaisedButton(
                  child: Text('추가'),
                  onPressed: () => _addTodo(Todo(_todoController.text)),
                )
              ],
            ),
            StreamBuilder<QuerySnapshot>(
                stream:
                    Firestore.instance.collection(_todoCollection).snapshots(), // 컬렉션에 있는 모든 문서를 스트림으로 얻음
                builder: (context, snapshot) { // BuildContext 와 QuerySnapshot 객체가 각각 넘어옴
                  if (!snapshot.hasData) { // 자료의 유무 판단
                    return CircularProgressIndicator();
                  }
                  final documents = snapshot.data.documents; // 모든 문서를 얻음
                  return Expanded(
                    child: ListView(
                      children: documents
                          .map((todo) => _buildTodoItemWidget(todo))
                          .toList(), //
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  // 할 일 객체를 ListTile 형태로 변경하는 메서드
  Widget _buildTodoItemWidget(DocumentSnapshot doc) {
    final todo = Todo(doc['title'], isDone: doc['isDone']);
    return ListTile(
      onTap: () => _toggleTodo(doc),
      title: Text(todo.title,
          style: todo.isDone
              ? TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontStyle: FontStyle.italic,
                )
              : null),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(doc),
      ),
    );
  }

  // 할 일 추가 메서드
  _addTodo(Todo todo) {
    Firestore.instance
        .collection(_todoCollection)
        .add({'title': todo.title, 'isDone': todo.isDone});
  }

  // 할 일 삭제 메서드
  _deleteTodo(DocumentSnapshot doc) {
    Firestore.instance
        .collection(_todoCollection)
        .document(doc.documentID)
        .delete();
  }

  // 할 일 완료/미완료 메서드
  _toggleTodo(DocumentSnapshot doc) {
    Firestore.instance
        .collection(_todoCollection)
    .document(doc.documentID)
    .updateData({'isDone': !doc['isDone']});
  }
}
