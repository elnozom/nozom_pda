import 'package:get_storage/get_storage.dart';
import 'package:nozom_pda/domain/core/interfaces/hashing.interface.dart';
import 'package:nozom_pda/domain/core/interfaces/storage.interfaace.dart';


class Hashing implements IHashing {
  final GetStorage _storage;
  const Hashing({required GetStorage storage}) : _storage = storage;

  @override
  String encrypt(String key) {
    return "123";
  }
}