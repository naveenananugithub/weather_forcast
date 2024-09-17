import 'package:flutter/material.dart';

import '/constants/app_colors.dart';

// class RoundTextField extends StatelessWidget {
//   const RoundTextField({
//     super.key,
//     this.controller,
//   });

//   final TextEditingController? controller;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 55,
//       d                                                                                                                                                                                                                                      ecoration: BoxDecoration(
//         color: AppColors.accentBlue,
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: TextField(
//         style: const TextStyle(
//           color: AppColors.white,
//         ),
//         controller: controller,
//         decoration: const InputDecoration(
//           fillColor: Colors.white,
//           focusColor: Colors.white,
//           prefixIcon: Icon(
//             Icons.search,
//             color: AppColors.grey,
//           ),
//           border: InputBorder.none,
//           hintText: 'Search',
//           hintStyle: TextStyle(
//             color: AppColors.grey,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }
// }


class RoundTextField extends StatelessWidget {
  const RoundTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: AppColors.accentBlue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: AppColors.white,
        ),
        onSubmitted: (_) {
          // Trigger search when "Enter" is pressed
          FocusScope.of(context).unfocus();
        },
        decoration: const InputDecoration(
          fillColor: Colors.white,
          focusColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.grey,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
