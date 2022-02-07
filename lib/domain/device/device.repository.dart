import 'package:get/instance_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nozom_pda/domain/core/exceptions/default.exception.dart';
import 'package:nozom_pda/infrastructure/dal/services/device/device.service.dart';
import 'package:nozom_pda/infrastructure/dal/services/doc/doc.service.dart';

class DeviceRepository {
  final DeviceService _deviceService;

  DeviceRepository({
    required DeviceService deviceService,
  })  : _deviceService = deviceService;

  Future<bool> isDeviceIdentified() async {
    try {
      final storage = Get.find<GetStorage>();
      String imei = storage.read("imei");
      final response = await _deviceService.isDeviceIdentified(imei);
      return response;
    } catch (err) {
      throw DefaultException(message: 'isDeviceIdentified error: $err');
    }
  }

}