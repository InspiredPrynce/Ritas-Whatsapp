import 'package:ritas_whatsapp/core/app_export.dart';
import 'package:ritas_whatsapp/presentation/whatsapp_calls_tab_container_screen/models/whatsapp_calls_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WhatsappCallsTabContainerScreen.
///
/// This class manages the state of the WhatsappCallsTabContainerScreen, including the
/// current whatsappCallsTabContainerModelObj
class WhatsappCallsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<WhatsappCallsTabContainerModel> whatsappCallsTabContainerModelObj =
      WhatsappCallsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
