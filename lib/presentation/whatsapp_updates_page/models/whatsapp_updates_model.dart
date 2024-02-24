import '../../../core/app_export.dart';
import 'userprofilelist1_item_model.dart';

/// This class defines the variables used in the [whatsapp_updates_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WhatsappUpdatesModel {
  Rx<List<Userprofilelist1ItemModel>> userprofilelist1ItemList = Rx([
    Userprofilelist1ItemModel(
        userImage: ImageConstant.imgEllipse36.obs,
        username: "Bentley Boss".obs,
        timestamp: "Just now".obs),
    Userprofilelist1ItemModel(
        userImage: ImageConstant.imgEllipse32.obs,
        username: "Ukamaka".obs,
        timestamp: "5 minutes ago".obs),
    Userprofilelist1ItemModel(
        username: "Mysterious".obs, timestamp: "6 minutes ago".obs),
    Userprofilelist1ItemModel(
        username: "Sheila Pasteries".obs, timestamp: "8:06 AM".obs),
    Userprofilelist1ItemModel(
        username: "Sheila Pasteries".obs, timestamp: "8:06 AM".obs)
  ]);
}
