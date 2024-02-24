import '../../../core/app_export.dart';
import 'businessprofilesection_item_model.dart';

/// This class defines the variables used in the [whatsapp_storage_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WhatsappStorageModel {
  Rx<List<BusinessprofilesectionItemModel>> businessprofilesectionItemList =
      Rx([
    BusinessprofilesectionItemModel(
        businessProfileImage: ImageConstant.imgIcRoundStore.obs,
        businessProfileText: "Business Profile".obs,
        manageAddressText: "Manage address, hours, and websites".obs),
    BusinessprofilesectionItemModel(
        businessProfileImage: ImageConstant.imgGravityUiDots9.obs,
        businessProfileText: "Catalog".obs,
        manageAddressText: "Show products and services".obs),
    BusinessprofilesectionItemModel(
        businessProfileImage: ImageConstant.imgHealthiconsMegaphone.obs,
        businessProfileText: "Advertise".obs,
        manageAddressText: "Create ads that lead to whatsApp".obs),
    BusinessprofilesectionItemModel(
        businessProfileImage: ImageConstant.imgLinksimplehorizontal.obs,
        businessProfileText: "Facebook & Instagram".obs,
        manageAddressText: "Add WhatsApp to your account".obs)
  ]);
}
