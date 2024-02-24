import '../../../core/app_export.dart';

/// This class is used in the [listwithuserprofile_item_widget] screen.
class ListwithuserprofileItemModel {
  ListwithuserprofileItemModel({
    this.profileImage,
    this.username,
    this.postImage,
    this.postTime,
    this.id,
  }) {
    profileImage = profileImage ?? Rx(ImageConstant.imgEllipse32);
    username = username ?? Rx("Tuzzy Boka");
    postImage = postImage ?? Rx(ImageConstant.imgBiArrowLeft);
    postTime = postTime ?? Rx("Yesterday, 11:48 PM");
    id = id ?? Rx("");
  }

  Rx<String>? profileImage;

  Rx<String>? username;

  Rx<String>? postImage;

  Rx<String>? postTime;

  Rx<String>? id;
}
