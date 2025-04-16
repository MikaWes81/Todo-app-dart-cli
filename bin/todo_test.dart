import 'dart:io';

List<String> todos = [];

void clearConsole() {
  for (var i = 0; i < 100; i++) {
    print('\n');
  }
}

void create() {
  print("Create Todos");
  print("Please Enter Your Todo");
  todos.add(stdin.readLineSync().toString());
  return;
}

void printlist() {
  int tl = todos.length; //tl = Length Todolist
  int todosnum = 0;
  if (todosnum + 5 > tl) {
    for (var x = todosnum; x < tl; x++) {
      print(todos[x]);
    }
  } else {
    for (var x = todosnum; x < todosnum + 5; x++) {
      print(todos[x]);
    }
  }
  Future.delayed(Duration(seconds: 30));
}

void list() {
  clearConsole();
  print("List Todos");
  printlist();
  Future.delayed(const Duration(seconds: 30), () {
    return;
  });
}

void read() {}

void save() {}

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
      read();
      break;
    case "4":
      save();
      break;
    default:
      print("exit");
      return;
  }
}
