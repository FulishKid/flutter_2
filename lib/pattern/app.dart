// ignore_for_file: avoid_function_literals_in_foreach_calls, avoid_print

import 'package:app/pattern/abstract_classes/transport.dart';
import 'package:app/pattern/abstract_classes/transport_factory.dart';
import 'package:app/pattern/factories/car_factory.dart';
import 'package:app/pattern/factories/motorboat_factory.dart';
import 'package:app/pattern/factories/motorcycle_factory.dart';

class App {
  void printPromotion(
      {List list = const <Transport>[],
      Set set = const <Transport>{},
      Map map = const <String, Transport>{}}) {
    list.forEach(
        (transport) => transport.promotion(price: 20000, discount: 1200));
    set.forEach(
        (transport) => transport.promotion(price: 20000, discount: 1200));
    map.forEach((key, value) =>
        print('${value.promotion(price: 20000, discount: 1200)}'));
  }

  TransportFactory carFactory = CarFactory();
  TransportFactory motoFactory = MotorcycleFactory();
  TransportFactory boatFactory = MotorboatFactory();

  var transportList = <Transport>[];
  var transportSet = <Transport>{};
  var transportMap = <String, Transport>{};

  void run() {
    Transport car1 = carFactory.createTransport();
    Transport car2 = carFactory.createTransport();
    Transport moto1 = motoFactory.createTransport();
    Transport boat1 = boatFactory.createTransport();

    transportList.addAll([car1, car2, moto1, boat1]);
    transportSet.addAll({car1, car2, moto1, boat1});
    transportMap
        .addAll({'car1': car1, 'car2': car2, 'moto1': moto1, 'boat1': boat1});

    printPromotion(set: transportSet);

    car1.turnOnMusic();
  }
}

void main() {
  App app = App();
  app.run();
}
