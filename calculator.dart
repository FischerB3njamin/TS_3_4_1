import "dart:io";
import "config.dart";
import 'helper.dart';

void calculate(ticketNumber) {
  if (ticketNumber > 0) {
    int row = calculateRow(ticketNumber);
    int seat = calculateSeat(ticketNumber, row);
    double price = calculatePrice(seat);

    // add one to start with row 1 and not by zero
    row++;

    printResult(row, seat, price, ticketNumber);
  }

// wait nuntil press enter
  stdin.readLineSync();
  clearConsole();
}

int calculateRow(ticketNumber) {
  return (ticketNumber ~/ SEATS_PER_ROW);
}

int calculateSeat(ticketNumber, row) {
  return ticketNumber - (row * SEATS_PER_ROW);
}

double calculatePrice(seat) {
  return seat % 2 == 0 ? PRICE_EVEN_SEAT : PRICE_ODD_SEAT;
}

void printResult(row, seat, price, ticketNumber) {
  print(LABELS['outputTicketInfo']);
  print('Ticketnummer: $ticketNumber');
  print('${LABELS['outputRow']} ${row}');
  print('${LABELS['outputSeat']} $seat');
  print('${LABELS['outputPrice']} ${price.toStringAsFixed(2)}');
  print(LABELS['outputNewTicketOrExit']);
}
