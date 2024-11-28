import "dart:io";
import "config.dart";

void clearConsole() {
  if (Platform.isWindows) {
    print(Process.runSync('cls', [], runInShell: true).stdout);
  } else {
    print(Process.runSync('clear', [], runInShell: true).stdout);
  }
}

bool inputIsValid(input) {
  String error = '';
  error += input == ''
      ? 'errorEmptyInput,'
      : int.tryParse(input) == null
          ? 'errorNotANumber,'
          : '';

  error += int.tryParse(input) == 0 ? 'errorZeroInput,' : '';
  if (error.length > 0) {
    printErrors(error);
    return false;
  }
  return true;
}

void printErrors(error) {
  List errors = error.split(',');
  errors.forEach((element) {
    if (element.isNotEmpty) print(LABELS[element]);
  });
}
