import 'package:flutter/material.dart';

import '../../mbanker_ui.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index){
          while(index < 5){
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: screenHeightPercentage(context, percentage: 0.09),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeightPercentage(context, percentage: 0.055),
                      width: screenWidthPercentage(context, percentage: 0.18),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                    horizontalSmallSpace,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ViewText.bodyText("6235485623"),
                        ViewText.caption("30/11/2021")
                      ],
                    ),
                    const Spacer(),
                    ViewText.middleSubHeadingText("+R5,600")
                  ],
                ),
              )
            );
          }
          return const ButtonOne(
            title: "See All",
            leading: Icon(Icons.list, color: Colors.white),
          );
        },
      ),
    );
  }
}
