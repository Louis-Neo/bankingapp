import 'package:flutter/material.dart';

import '../../mbanker_ui.dart';

class DashboardProfileDetails extends StatelessWidget {

  final String clientName;
  final String clientID;
  final Function()? onTapNotifications;
  final Function()? onTapProfile;

  const DashboardProfileDetails({
    Key? key,
    required this.clientName,
    required this.clientID,
    this.onTapNotifications,
    this.onTapProfile
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ViewText.subheading("Welcome,"),
                  verticalTinySpace,
                  ViewText.headingThree(clientName, overflow: TextOverflow.ellipsis, maxLines: 2),
                  verticalTinySpace,
                  ViewText.caption(clientID),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTapNotifications,
                  child: const Icon(Icons.notifications_none_outlined, size: 30),
                ),
                horizontalMediumSpace,
                GestureDetector(
                  onTap: onTapProfile,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: screenHeightPercentage(context, percentage: 0.035),
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}
