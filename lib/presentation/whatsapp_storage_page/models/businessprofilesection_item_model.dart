import '../../../core/app_export.dart';

/// This class is used in the [businessprofilesection_item_widget] screen.
class BusinessprofilesectionItemModel {
  BusinessprofilesectionItemModel({
    this.businessProfileImage,
    this.businessProfileText,
    this.manageAddressText,
    this.id,
  }) {
    businessProfileImage =
        businessProfileImage ?? Rx(ImageConstant.imgIcRoundStore);
    businessProfileText = businessProfileText ?? Rx("Business Profile");
    manageAddressText =
        manageAddressText ?? Rx("Manage address, hours, and websites");
    id = id ?? Rx("");
  }

  Rx<String>? businessProfileImage;

  Rx<String>? businessProfileText;

  Rx<String>? manageAddressText;

  Rx<String>? id;
}
