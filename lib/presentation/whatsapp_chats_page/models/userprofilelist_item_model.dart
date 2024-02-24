import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userImage,
    this.groupName,
    this.typingText,
    this.timeText,
    this.image1,
    this.groupText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse3);
    groupName = groupName ?? Rx("LATITUDE GROUP 13");
    typingText = typingText ?? Rx("Pablo drip is typing....");
    timeText = timeText ?? Rx("9:52 AM");
    image1 = image1 ?? Rx(ImageConstant.imgTablerPinFilled);
    groupText = groupText ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? groupName;

  Rx<String>? typingText;

  Rx<String>? timeText;

  Rx<String>? image1;

  Rx<String>? groupText;

  Rx<String>? id;
}
