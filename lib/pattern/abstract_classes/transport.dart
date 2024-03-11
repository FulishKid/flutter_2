import 'package:app/pattern/mixines/mixines.dart';

abstract class Transport with PlayMusic {
  double get priceMultiplier;

  void promotion({required int price, int discount});
}
