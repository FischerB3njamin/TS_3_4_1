import "dart:io";
import "helper.dart";
import "config.dart";
import "calculator.dart";

void run() {
  while (true) {
    print(LABELS['outputIntro']);
    String? _input = stdin.readLineSync();
    String input = _input?.trim() ?? '';

    if (input.toLowerCase() == EXIT) {
      return;
    }

    if (inputIsValid(input)) {
      calculate(int.tryParse(input));
    }
  }
}

void main() {
  run();
}
