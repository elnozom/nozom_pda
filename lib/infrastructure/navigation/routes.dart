import 'package:nozom_pda/infrastructure/navigation/bindings/domains/device.repository.binding.dart';

class Routes {
  static Future<String> get initialRoute async {
    try {
      final deviceRepo = DeviceRespositoryBinding().repository;
      final authorized = await deviceRepo.isDeviceIdentified();
      return !authorized ? UNAUTHORIZED : HOME;
    } catch (err) {
      return UNAUTHORIZED;
    }
  }

  static const HOME = '/home';
  static const UNAUTHORIZED = '/unauthorized';
}
