import 'package:mobx/mobx.dart';
import 'package:mobx_1/models/todo.model.dart';

part 'todo.store.g.dart';

class TodoStore = _TodoStore with _$TodoStore;


abstract class _TodoStore with Store {
  @observable
  var todos = ObservableList<Todo>();

  @action
  void add(Todo todo) {
    todos.add(todo);
  }
}
