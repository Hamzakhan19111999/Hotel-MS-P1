import 'dart:io';
import 'Room.dart';
import 'Hotel.dart';
void main() {
  var rooms = List.generate(10, (index) => Room(index + 1, false));
  var hotel = Hotel(rooms);

  print('Welcome to the Hotel Management System!');
  while (true) {
    print('\nMenu:');
    print('1. Book a room');
    print('2. Checkout a room');
    print('3. Display room status');
    print('4. Exit');
    print('Enter your choice: ');
    var choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('Enter room number to book: ');
        var roomNumber = int.tryParse(stdin.readLineSync() as String);
        if (roomNumber != null) {
           hotel.bookRoom (roomNumber,rooms);
        } else {
          print('Invalid room number. Please enter a valid number.');
        }
        break;
      case '2':
        print('Enter room number to checkout: ');
        var checkoutRoomNumber = int.tryParse(stdin.readLineSync() as String);
        if (checkoutRoomNumber != null) {
          hotel.checkoutRoom(checkoutRoomNumber,rooms);
        } else {
          print('Invalid room number. Please enter a valid number.');
        }
        break;
      case '3':
        hotel.displayStatus(rooms);
        break;
      case '4':
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}
