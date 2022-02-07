import 'package:get/get.dart';
import 'package:nozom_pda/domain/device/device.repository.dart';
import 'package:nozom_pda/infrastructure/dal/connect.dart';
import 'package:nozom_pda/infrastructure/dal/services/device/device.service.dart';

class DeviceRespositoryBinding {
  late DeviceRepository _deviceRepository;
  DeviceRepository get repository => _deviceRepository;

  DeviceRespositoryBinding() {
    final getConnect = Get.find<GetConnect>();
    final connect = Connect(connect: getConnect);
    final deviceService = DeviceService(connect);
    _deviceRepository = DeviceRepository(
      deviceService: deviceService,
    );
  }
}
