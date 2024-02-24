import '../controller/whatsapp_open_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappOpenChatScreen.
///
/// This class ensures that the WhatsappOpenChatController is created when the
/// WhatsappOpenChatScreen is first loaded.
class WhatsappOpenChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappOpenChatController());
  }
}
