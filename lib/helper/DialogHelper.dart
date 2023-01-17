// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../shared/constants/colors.dart';
// import '../shared/utils/SizeConfig.dart';
//
// abstract class DialogHelper{
//   /*static openDialogBox({title,message,barrierDismissal,color = ColorConstants.BLACK,image = null}){
//     return  showDialog(
//       useSafeArea: true,
//       useRootNavigator: false,
//       barrierDismissible: barrierDismissal,
//       context: Get.context!,
//       builder: (BuildContext context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return Dialog(
//               insetPadding: const EdgeInsets.all(60),
//               shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
//               child: SizedBox(
//                 height: Get.height*0.2,
//                 width: Get.width,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     SingleChildScrollView(
//                         physics: const BouncingScrollPhysics(),
//                         child: image != null ? Image(
//                           height: 20,
//                           width: 20,
//                           image: Svg(image),
//                         ) : Text(message,style: Theme.of(Get.context!).textTheme.bodyText2!.copyWith(
//                           fontSize: AdaptiveTextSize().getadaptiveTextSize(Get.context!, 13, Get.height),
//                           color: color,
//                         ),),
//                     ),
//                   ],
//                 ),
//               ));
//         });
//       },
//     );
//   }*/
//
//   static openNormalDialogBox(){
//     return showDialog(
//       useSafeArea: true,
//       useRootNavigator: false,
//       barrierDismissible: true,
//       context: Get.context!,
//       builder: (BuildContext context) {
//         return StatefulBuilder(builder: (context, setState) {
//           return AlertDialog(
//             title: Text('Message',style: Theme.of(Get.context!).textTheme.bodyText2!.copyWith(
//               fontSize: const AdaptiveTextSize().getadaptiveTextSize(Get.context!, 13, Get.height),
//             ),),
//             content: Text('Coming soon...',style: Theme.of(Get.context!).textTheme.bodyText2!.copyWith(
//               fontSize: const AdaptiveTextSize().getadaptiveTextSize(Get.context!, 13, Get.height),
//             ),),
//             actions: [
//               TextButton(
//                 style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => ColorConstants.WHITE),textStyle: MaterialStateTextStyle.resolveWith((states) => Theme.of(Get.context!).textTheme.bodyText2!.copyWith(
//                   color: ColorConstants.BLACK,
//                   fontWeight: FontWeight.w600,
//                   fontSize: const AdaptiveTextSize().getadaptiveTextSize(Get.context!, 11, Get.height),
//                 ))),
//                 child: Text('CLOSE',style: Theme.of(Get.context!).textTheme.bodyText2!.copyWith(
//                   color: ColorConstants.GREEN,
//                   fontWeight: FontWeight.w600,
//                   fontSize: const AdaptiveTextSize().getadaptiveTextSize(Get.context!, 11, Get.height),
//                 )),
//                 onPressed: () {
//                   Get.back();
//                 },
//               ),
//             ],
//           );
//         });
//       },
//     );
//   }
// }