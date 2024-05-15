// import 'package:eventsjo/core/constants/color_constants.dart';
// import 'package:eventsjo/locator.dart';
// import 'package:flutter/material.dart';

// import '../utils/custom_toast/custom_toast.dart';
// import 'custom_text.dart';
// import 'custom_text_style.dart';

// class CustomTopToast extends StatelessWidget {
//   final String? message;
//   final bool? isSuccess;

//   CustomTopToast({this.message, this.isSuccess});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(10),
//         child: MediaQuery(
//           data: MediaQuery.of(context).copyWith(
//             textScaleFactor: 1.0,
//           ), //set desired text scale factor here
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const SizedBox(height: 50),
//               message != null
//                   ? ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Stack(
//                         children: [
//                           Container(
//                               padding: const EdgeInsets.all(20),
//                               decoration: BoxDecoration(
//                                 color: Colors.blue,
//                               ),
//                               child: Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                         flex: 20,
//                                         child: CircleAvatar(
//                                             radius: 12,
//                                             backgroundColor: Colors.red,
//                                             child: isSuccess!
//                                                 ? Icon(Icons.check)
//                                                 : CustomText("!",
//                                                     style: getIt<CustomTextStyle>()
//                                                         .normal(color: ColorConstants.color_0xffffffff, fontSize: 20)))),
//                                     Expanded(
//                                       flex: 85,
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           CustomText("Server Connection Issue",
//                                               style: getIt<CustomTextStyle>()
//                                                   .normal(color: ColorConstants.color_0xffffffff, fontSize: 14)),
//                                           SizedBox(
//                                             height: 5,
//                                           ),
//                                           CustomText("Looks like there is a server connection issue, try again in a bit ",
//                                               style: getIt<CustomTextStyle>()
//                                                   .normal(color: ColorConstants.color_0xffffffff, fontSize: 12)),
//                                         ],
//                                       ),
//                                     ),
//                                     Container(
//                                       height: 50,
//                                       color: Colors.white,
//                                       width: .5,
//                                     ),
//                                     Expanded(
//                                       flex: 15,
//                                       child: Container(
//                                         alignment: Alignment.center,
//                                         child: ElevatedButton(
//                                           onPressed: () {
//                                             getIt<CustomNotificatonToast>().finish();
//                                           },
//                                           child: Icon(
//                                             Icons.close,
//                                             size: 18,
//                                             color: ColorConstants.color_0xffffffff,
//                                           ),
//                                         ),
//                                       ),
//                                     )
//                                   ])),
//                           Container(
//                             color: isSuccess! ? ColorConstants.color_0xff00CBB3 : Colors.red,
//                             width: MediaQuery.of(context).size.width,
//                             height: 4,
//                           ),
//                         ],
//                       ),
//                     )
//                   : Container(),
//             ],
//           ),
//         ));
//   }
// }
