import 'dart:io';

List<String> todos = [];

void clearConsole() {
  for (var i = 0; i < 100; i++) {
    print('\n');
  }
}

void create() {
  print("Create Todos");
  int langht_todolist = todos.length;
  langht_todolist += 1;
  todos[langht_todolist] = stdin.readLineSync().toString();
  return;
}

void list() {
  print("List Todos");
  return;
}

void read_todos() {}

void main() {
  clearConsole();
  print("Hello");
  String? mainInput = stdin.readLineSync();

  switch (mainInput.toString()) {
    case "1":
      clearConsole();
      create();
      main();
      break;
    case "2":
      clearConsole();
      list();
      main();
      break;
    case "3":
      read_todos();
    default:
      print("exit");
      return;
  }
}
