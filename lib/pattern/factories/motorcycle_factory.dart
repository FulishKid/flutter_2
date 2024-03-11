import 'package:app/pattern/abstract_classes/transport.dart';
import 'package:app/pattern/abstract_classes/transport_factory.dart';
import 'package:app/pattern/transport/motorcycle.dart';

class MotorcycleFactory implements TransportFactory {
  @override
  Transport createTransport() {
    return MotorCycle();
  }
}
