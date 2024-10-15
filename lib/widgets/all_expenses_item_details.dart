// import 'package:flutter/material.dart';
// import 'package:responsive_dashbord/constant.dart';
// import 'package:responsive_dashbord/models/all_expenses_item_model.dart';
// import 'package:responsive_dashbord/views/utils/app_images.dart';
// import 'package:responsive_dashbord/views/utils/app_style.dart';
// import 'package:responsive_dashbord/widgets/all_expenses_item.dart';
// import 'package:responsive_dashbord/widgets/all_expenses_item_header.dart';

// class AllExpensesItemDetails extends StatelessWidget {
//   const AllExpensesItemDetails({
//     super.key,
//     required this.detailsItem,
//   });

//   final AllExpensesItemModel detailsItem;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         AllExpensesItemHeader(
//           allExpensesItemModel: detailsItem,
//         ),
//         const SizedBox(height: 8),
//         Text(
//           detailsItem.title,
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           detailsItem.date,
//           style: const TextStyle(fontSize: 14),
//         ),
//         const SizedBox(height: 16),
//         Text(
//           detailsItem.price,
//           style: const TextStyle(
//               fontSize: 24, fontWeight: FontWeight.w600, color: Colors.blue),
//         ),
//       ],
//     );
//   }
// }
