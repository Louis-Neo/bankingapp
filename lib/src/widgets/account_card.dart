import 'package:flutter/material.dart';

import '../../mbanker_ui.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeightPercentage(context, percentage: 0.175),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index){
          if(index != 0){
            return Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                padding: const EdgeInsets.all(15),
                height: screenHeightPercentage(context, percentage: 0.15),
                width: screenWidthPercentage(context, percentage: 0.65),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ViewText.subheading("Savings Account"),
                    const Spacer(),
                    ViewText.middleSubHeadingText("6254879856"),
                    verticalTinySpace,
                    ViewText.caption("10/2021")
                  ],
                ),
              )
            );
          }
          return Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              horizontalMediumSpace,
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  height: screenHeightPercentage(context, percentage: 0.15),
                  width: screenWidthPercentage(context, percentage: 0.65),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ViewText.subheading("Cheque Account"),
                      const Spacer(),
                      ViewText.middleSubHeadingText("6256458523"),
                      verticalTinySpace,
                      ViewText.caption("11/2021")
                    ],
                  ),
                )
              )
            ],
          );
        },
      ),
    );
  }
}
