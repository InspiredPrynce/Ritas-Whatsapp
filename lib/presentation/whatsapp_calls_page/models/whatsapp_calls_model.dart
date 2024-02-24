import '../../../core/app_export.dart';
import 'listwithuserprofile_item_model.dart';

/// This class defines the variables used in the [whatsapp_calls_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WhatsappCallsModel {
  Rx<List<ListwithuserprofileItemModel>> listwithuserprofileItemList = Rx([
    ListwithuserprofileItemModel(
        profileImage: ImageConstant.imgEllipse32.obs,
        username: "Tuzzy Boka".obs,
        postImage: ImageConstant.imgBiArrowLeft.obs,
        postTime: "Yesterday, 11:48 PM".obs),
    ListwithuserprofileItemModel(
        profileImage: ImageConstant.imgEllipse32.obs,
        username: "Tuzzy Boka".obs,
        postImage: ImageConstant.imgBiArrowLeftPrimary.obs,
        postTime: "Yesterday, 9:28 PM".obs),
    ListwithuserprofileItemModel(
        profileImage: ImageConstant.imgEllipse33.obs,
        username: "Bestie Luv (2)".obs,
        postImage: ImageConstant.imgBiArrowLeftPrimary22x22.obs,
        postTime: "Yesterday, 8:33 PM".obs),
    ListwithuserprofileItemModel(
        profileImage: ImageConstant.imgEllipse32.obs,
        username: "Tuzzy Boka".obs,
        postImage: ImageConstant.imgBiArrowLeft.obs,
        postTime: "Yesterday, 2:44 PM".obs),
    ListwithuserprofileItemModel(
        profileImage: ImageConstant.imgEllipse35.obs,
        username: "Jay Colada".obs,
        postImage: ImageConstant.imgBiArrowLeft.obs,
        postTime: "Ferbruary 17 11:48 PM".obs)
  ]);
}
