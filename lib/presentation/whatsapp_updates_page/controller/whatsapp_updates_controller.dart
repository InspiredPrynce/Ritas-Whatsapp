import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/presentation/whatsapp_updates_page/models/whatsapp_updates_model.dart';

/// A controller class for the WhatsappUpdatesPage.
///
/// This class manages the state of the WhatsappUpdatesPage, including the
/// current whatsappUpdatesModelObj
class WhatsappUpdatesController extends GetxController {
  WhatsappUpdatesController(this.whatsappUpdatesModelObj);

  Rx<WhatsappUpdatesModel> whatsappUpdatesModelObj;
}
