import 'package:app/pattern/abstract_classes/transport.dart';
import 'package:app/pattern/mixines/mixines.dart';

class Car with PlayMusic implements Transport {
  @override
  final double priceMultiplier = 1.09;

  @override
  void promotion({required int price, int discount = 0}) {
    final finalPrice = price * priceMultiplier - (discount);
    print(
        "Авто з ціною $price\$ і знижкою $discount\$. Загальна ціна: $finalPrice\$");
  }
}
