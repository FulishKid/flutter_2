import 'package:app/pattern/abstract_classes/transport.dart';
import 'package:app/pattern/abstract_classes/transport_factory.dart';
import 'package:app/pattern/transport/motorboat.dart';

class MotorboatFactory implements TransportFactory {
  @override
  Transport createTransport() {
    return MotorBoat();
  }
}
