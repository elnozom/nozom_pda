import 'package:nozom_pda/domain/core/exceptions/default.exception.dart';
import 'package:nozom_pda/domain/core/interfaces/http_connect.interface.dart';


class DocService {
  final IHttpConnect _connect;
  const DocService(IHttpConnect connect) : _connect = connect;

  String get _prefix => '';

  // isInventorySessioonOpened :  called to validate that there is an inventory session opened or not 
  // if theres inventory sesssion we will prevent user from going to any document page other than inventory
  // if the session is not pened the we cant create inventory document until we pen session
  Future<bool> isInventorySessionOpened() async {
    final response = await _connect.get(
      '$_prefix/login',
      decoder: (value) => value
    );

    if (response.success) {
      return response.payload!;
    } else {
      throw DefaultException(message: response.payload!.error!);
    }
  }
}