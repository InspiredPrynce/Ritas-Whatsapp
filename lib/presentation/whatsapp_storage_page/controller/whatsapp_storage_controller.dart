import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/presentation/whatsapp_storage_page/models/whatsapp_storage_model.dart';

/// A controller class for the WhatsappStoragePage.
///
/// This class manages the state of the WhatsappStoragePage, including the
/// current whatsappStorageModelObj
class WhatsappStorageController extends GetxController {
  WhatsappStorageController(this.whatsappStorageModelObj);

  Rx<WhatsappStorageModel> whatsappStorageModelObj;
}
