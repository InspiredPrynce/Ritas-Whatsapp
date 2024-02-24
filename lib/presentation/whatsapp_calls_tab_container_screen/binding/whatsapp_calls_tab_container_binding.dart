import '../controller/whatsapp_calls_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappCallsTabContainerScreen.
///
/// This class ensures that the WhatsappCallsTabContainerController is created when the
/// WhatsappCallsTabContainerScreen is first loaded.
class WhatsappCallsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappCallsTabContainerController());
  }
}
