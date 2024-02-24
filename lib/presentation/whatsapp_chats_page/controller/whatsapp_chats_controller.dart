import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/presentation/whatsapp_chats_page/models/whatsapp_chats_model.dart';

/// A controller class for the WhatsappChatsPage.
///
/// This class manages the state of the WhatsappChatsPage, including the
/// current whatsappChatsModelObj
class WhatsappChatsController extends GetxController {
  WhatsappChatsController(this.whatsappChatsModelObj);

  Rx<WhatsappChatsModel> whatsappChatsModelObj;
}
