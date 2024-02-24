import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/presentation/whatsapp_open_chat_screen/models/whatsapp_open_chat_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WhatsappOpenChatScreen.
///
/// This class manages the state of the WhatsappOpenChatScreen, including the
/// current whatsappOpenChatModelObj
class WhatsappOpenChatController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<WhatsappOpenChatModel> whatsappOpenChatModelObj =
      WhatsappOpenChatModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
