import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [whatsapp_chats_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WhatsappChatsModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse3.obs,
        groupName: "LATITUDE GROUP 13".obs,
        typingText: "Pablo drip is typing....".obs,
        timeText: "9:52 AM".obs,
        image1: ImageConstant.imgTablerPinFilled.obs,
        groupText: "1".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse357x57.obs,
        groupName: "Cruise Academy".obs,
        typingText: "2/17/24".obs,
        timeText: "Tresh added +234 ...".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse31.obs,
        groupName: "Pablo Son (You)".obs,
        typingText: "Yestterday".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse32.obs,
        groupName: "Don Kenzy".obs,
        typingText: "9:52 AM".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse33.obs,
        groupName: "Emmanuel ".obs,
        typingText: "9:52 AM".obs,
        timeText: "And I finally got the letter fro...".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse35.obs,
        groupName: "Emmanuel ".obs,
        typingText: "9:52 AM".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse35.obs,
        groupName: "Emmanuel ".obs,
        typingText: "9:52 AM".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse35.obs,
        groupName: "Emmanuel ".obs,
        typingText: "9:52 AM".obs),
    UserprofilelistItemModel(
        userImage: ImageConstant.imgEllipse35.obs,
        groupName: "Emmanuel ".obs,
        typingText: "9:52 AM".obs)
  ]);
}
