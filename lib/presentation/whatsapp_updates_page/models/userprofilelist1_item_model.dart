import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel({
    this.userImage,
    this.username,
    this.timestamp,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse36);
    username = username ?? Rx("Bentley Boss");
    timestamp = timestamp ?? Rx("Just now");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? username;

  Rx<String>? timestamp;

  Rx<String>? id;
}
