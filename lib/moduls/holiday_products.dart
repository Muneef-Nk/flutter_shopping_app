class HolidayProduct{
  final String img, name, price, size;

  HolidayProduct({required this.img, required this.name, required this.price, required this.size});
}
List<HolidayProduct> holidayProducts=[
  HolidayProduct(
      img: 'assets/images/l.jpg',
      name: 'Watch',
      price: '\$17',
    size: '32 mm'

  ),
  HolidayProduct(
      img: 'assets/images/f.jpg',
      name: 'Watch',
      price: '\$35',
      size: '30 mm'
  ),
  HolidayProduct(
      img: 'assets/images/a.jpg',
      name: 'Watch',
      price: '\$43',
      size: '34 mm'
  ),
  HolidayProduct(
      img: 'assets/images/k.jpg',
      name: 'Watch',
      price: '\$95',
      size: '33 mm'
  ),

  HolidayProduct(
      img: 'assets/images/m.jpg',
      name: 'Watch',
      price: '\$65',
      size: '32 mm'
  ),

];