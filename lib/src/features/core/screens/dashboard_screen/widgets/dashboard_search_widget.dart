import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constands/text_strings.dart';

class DashboardSearchWidget extends StatelessWidget {
  const DashboardSearchWidget({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(border: Border(left: BorderSide(width: 4))),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tDashboardSearch,
              style: txtTheme.titleLarge
                  ?.apply(color: Colors.grey.withOpacity(0.5))),
          Icon(
            Icons.mic,
            size: 25,
          ),
        ],
      ),
    );
  }
}