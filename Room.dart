
class Room {
  final int roomNumber;
  bool isBooked;

  Room(this.roomNumber, this.isBooked); 
void book() => isBooked = true;
void checkout() => isBooked = false; 
}
