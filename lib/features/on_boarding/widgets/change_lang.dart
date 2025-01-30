import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/functions.dart';

class ChangeLangWidget extends StatelessWidget {
  const ChangeLangWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isEnLang ? Alignment.centerRight : Alignment.centerLeft,
      margin:
      isEnLang ? EdgeInsets.only(right: 10.w) : EdgeInsets.only(left: 10.w),
      child: OutlinedButton.icon(
        label: Text(tr('Arabic')),
        icon: Icon(Icons.translate),
        onPressed: () {},
      ),
    );
  }
}
