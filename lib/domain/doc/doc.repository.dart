import 'package:nozom_pda/domain/core/exceptions/default.exception.dart';
import 'package:nozom_pda/infrastructure/dal/services/doc/doc.service.dart';

class DocRepository {
  final DocService _docService;

  DocRepository({
    required DocService docService,
  })  : _docService = docService;

  Future<bool> isInventorySessioonOpened() async {
    try {
      final response = await _docService.isInventorySessionOpened();
      return response;
    } catch (err) {
      throw DefaultException();
    }
  }

}