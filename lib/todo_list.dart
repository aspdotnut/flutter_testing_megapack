import 'package:flutter/material.dart';

import 'dio/todo_dio.dart';

class TodoList extends StatefulWidget {

  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  final TextEditingController _textController = TextEditingController();
  final List<dynamic> _tasks = [];

  void _onTextSubmitted() async {

    if (_textController.text.isNotEmpty) {

      await addTodoItem(_textController.text);

      _textController.clear();
    }
  }

  void _getTasks() async {

    var tasks = await getTodoItems();

    setState(() {
      _tasks.clear();
      _tasks.addAll(tasks);
    });
  }

  void _onCheckboxChanged(int id) async {

    await updateTodoItem(id);
  }

  void _onRemove(int id) async {

    await deleteTodoItem(id);
  }

  @override
  Widget build(BuildContext context) {

    _getTasks();

    return Center(

      child: Container(
        margin: const EdgeInsets.all(40),

        child: LayoutBuilder(

          builder: (context, constraints) {

            if (constraints.maxWidth < 1250){

              return SingleChildScrollView(

                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      const Text('Todo list'),

                      const SizedBox(height: 20),

                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _tasks.length,
                        itemBuilder: (context, index) {

                          var id = _tasks[index]['id'];
                          var task = _tasks[index]['name'];
                          var value = _tasks[index]['isDone'];

                          return ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Row(

                                  children: [
                                    Checkbox(
                                      value: value,
                                      onChanged: (bool? newValue) {
                                        _onCheckboxChanged(id);
                                      },
                                    ),

                                    Text(task.toString()),
                                  ],
                                ),

                                FilledButton(

                                  onPressed: () => _onRemove(id),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.error),
                                  ),

                                  child: const Icon(Icons.delete_outline),
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 50),

                      const Text('Add to list:'),

                      const SizedBox(height: 20),

                      TextField(
                        controller: _textController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Task',
                        ),
                      ),

                      const SizedBox(height: 20),

                      FilledButton(

                        onPressed: _onTextSubmitted,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                        ),

                        child: const Text('Add'),
                      ),
                    ],
                  ),
                ),
              );
            }
            else {

              return ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1250,),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        const Text('Todo list'),

                        const SizedBox(height: 20),

                        Flexible(

                          child: ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 600,),

                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: _tasks.length,
                              itemBuilder: (context, index) {

                                var id = _tasks[index]['id'];
                                var task = _tasks[index]['name'];
                                var value = _tasks[index]['isDone'];

                                return ListTile(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [
                                      Row(

                                        children: [
                                          Checkbox(
                                            value: value,
                                            onChanged: (bool? newValue) {
                                              _onCheckboxChanged(id);
                                            },
                                          ),

                                          Text(task.toString()),
                                        ],
                                      ),

                                      FilledButton(

                                        onPressed: () => _onRemove(id),
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.error),
                                        ),

                                        child: const Icon(Icons.delete_outline),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        const Text('Add to list:'),

                        const SizedBox(height: 20),

                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 600,),

                          child: TextField(
                            controller: _textController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Task',
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        FilledButton(

                          onPressed: _onTextSubmitted,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.secondary),
                          ),

                          child: const Text('Add'),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {

    _textController.dispose();
    super.dispose();
  }
}