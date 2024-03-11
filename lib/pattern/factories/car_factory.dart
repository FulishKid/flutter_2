import 'package:app/pattern/abstract_classes/transport.dart';
import 'package:app/pattern/abstract_classes/transport_factory.dart';
import 'package:app/pattern/transport/car.dart';

class CarFactory implements TransportFactory {
  @override
  Transport createTransport() {
    return Car();
  }
}
