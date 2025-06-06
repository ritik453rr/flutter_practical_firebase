import 'package:authentication_ptcl/comman/app_srorage.dart';
import 'package:authentication_ptcl/dialog/adaptive_dialog.dart';
import 'package:authentication_ptcl/navigation/app_routes.dart';
import 'package:authentication_ptcl/services/firebase_services.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get/get.dart';

import '../../../services/firestore_services.dart';

class ProfileController extends GetxController{
    var isLoading = true.obs;

  // @override
  // void onInit() async{
  //  super.onInit();
  // //  await FirebaseAnalytics.instance
  // // .logScreenView(
  // //   screenName: 'Profile Screen'
  // // );
  // }

  @override
  void onInit() async{
    super.onInit();
   await FirestoreServices.getUser(uid: AppStorage.getUid());
   isLoading.value = false;

  }


   /// Logout
  void logout() {
    AdaptiveDialog.showDialog(
      title: "Logout",
      content: "Are you sure you want to logout?",
      onPressedYes: () async {
        Get.back();
        await FirebaseServices.signOut();
        Get.offNamed(AppRoutes.login);
      },
    );
  }
}