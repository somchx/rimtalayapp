class RoomItem {
  final int id;
  final String name;
  final int price;
  final int price2;
  final String image;

  RoomItem({
    required this.id,
    required this.name,
    required this.price,
    required this.price2,
    required this.image});

  @override
  String toString() {
    return '$id $name : ราคา $price - $price2 บาท';
  }
}
