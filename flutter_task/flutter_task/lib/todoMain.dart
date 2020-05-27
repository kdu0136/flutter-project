import 'package:flutter/material.dart';

import './todo.dart';

class TodoMain extends StatefulWidget {
  @override
  _TodoMainState createState() => _TodoMainState();
}

class _TodoMainState extends State<TodoMain> {
  final _todoList = <Todo>[]; // 할 일 리스트
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
                  onPressed: () => _addTodo(Todo(title: _todoController.text)),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: _todoList
                    .map((todo) => _buildTodoItemWidget(todo))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  // 할 일 객체를 ListTile 형태로 변경하는 메서드
  Widget _buildTodoItemWidget(Todo todo) {
    return ListTile(
      onTap: () => _toggleTodo(todo),
      title: Text(todo.title,
          style: todo.isDone
              ? TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontStyle: FontStyle.italic,
                )
              : null),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(todo),
      ),
    );
  }

  // 할 일 추가 메서드
  _addTodo(Todo todo) {
    setState(() {
      _todoList.add(todo);
      _todoController.text = '';
    });
  }

  // 할 일 삭제 메서드
  _deleteTodo(Todo todo) {
    setState(() {
      _todoList.remove(todo);
    });
  }

  // 할 일 완료/미완료 메서드
  _toggleTodo(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
}
