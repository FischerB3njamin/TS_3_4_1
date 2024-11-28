const int SEATS_PER_ROW = 12;
const double PRICE_EVEN_SEAT = 15.00;
const double PRICE_ODD_SEAT = 12.00;
void main() {
  print('gebe eine Ticketnummer ein');
  int ticketNumber = 10; // lese Zeile ein
  if (ticketNumber > 0) {
    int row = calculateRow(ticketNumber);
    int seat = calculateSeat(ticketNumber, row);
    double price = calculatePrice(seat);

    // add one to start with row 1 and not by zero
    row++;

    printResult(row, seat, price);
  } else {
    print('Die TIcketnummer muss größer null sein');
  }
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

void printResult(row, seat, price) {
  print('TICKET - INFO');
  print('Reihe: ${row}');
  print('Platz: $seat');
  print('Preis: $price €');
}
