import 'dart:io';




void clearConsole() {
  if (Platform.isWindows) {
    // Windows
    Process.run('cls', [], runInShell: true).then((result) {
      print(result.stdout);
    });
  } else {
    // Linux und macOS
    Process.run('clear', [], runInShell: true).then((result) {
      print(result.stdout);
    });
  }
}



void create(){
  print("Create Todos");
  return;
}

void list(){
  print("List Todos");
  return;
}

void main ()
{
  print("Hello");
  String? mainInput = stdin.readLineSync();

  switch(mainInput.toString())
  {
      case "1":
        create();
        break;
      case "2":
        list();
        break;
      default:
        print("exit");
        return;
  }
}