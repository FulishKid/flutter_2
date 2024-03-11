import 'package:app/pattern/abstract_classes/transport.dart';
import 'package:app/pattern/mixines/mixines.dart';

class MotorCycle with PlayMusic implements Transport {
  @override
  final double priceMultiplier = 1.2;

  @override
  void promotion({required int price, int discount = 0}) {
    final finalPrice = price * priceMultiplier - (discount);
    print(
        "Мотоцикл з ціною $price\$ і знижкою $discount\$. Загальна ціна: $finalPrice\$");
  }
}
