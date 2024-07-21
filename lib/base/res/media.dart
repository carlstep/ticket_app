// create a class with static variable 'baseImage' with a oth for the images.
// this helps to make the code more maintainable.
// if the images location changes, update the path.

class AppMedia {
  static const _baseImage = 'assets/images';
  static const logo = '$_baseImage/logo.png';
  static const hotelRoom = '$_baseImage/hotel_room.png';
}
