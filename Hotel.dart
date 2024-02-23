import 'Room.dart';

class Hotel {
  final List<Room> rooms;

  Hotel(this.rooms);

 void checkoutRoom(int roomNumber,List<Room> rooms) {
    var room = rooms.firstWhere((room) => room.roomNumber == roomNumber, orElse: () => Room(-1, false));
    if (room.roomNumber != -1 && room.isBooked) {
      room.checkout();
      print('Room $roomNumber has been checked out.');
    } else {
      print('Room $roomNumber is not booked or does not exist.');
    }
 }
 
 void bookRoom(int roomNumber,List<Room> rooms) {
    var room = rooms.firstWhere((room) => room.roomNumber == roomNumber, orElse: () => Room(-1, false));
    if (room.roomNumber != -1 && !room.isBooked) {
      room.book();
      print('Room $roomNumber has been booked.');
    } else {
      print('Room $roomNumber is not available for booking.');
    }
  } 
 void displayStatus(List<Room> rooms) {
    print('Room Status:');
    rooms.forEach((room) {
      print('Room ${room.roomNumber} - ${room.isBooked ? 'Booked' : 'Available'}');
    });
  }
  

  
}
