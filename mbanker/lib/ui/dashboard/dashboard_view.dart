import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbanker_ui/mbanker_ui.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_view_model.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, child) => Scaffold(
          body: ListView(
            children: [
              verticalMediumSpace,
              const DashboardProfileDetails(
                clientName: "Dikeledi Tshepiso Patricia Aau",
                clientID: "ID0012",
              ),
              verticalLargeSpace,
              const AccountCard(),
              verticalMediumSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: ButtonOne(
                        title: "Deposit",
                        leading: const Icon(Icons.attach_money_sharp, color: Colors.white),
                        onTap: model.navigateTo,
                      ),
                    ),
                    horizontalSmallSpace,
                    Expanded(
                      child: ButtonOne(
                          title: "Transact",
                          leading: const Icon(Icons.money_off, color: Colors.white),
                          onTap: model.navigateToRegistration,
                      )
                    )
                  ],
                ),
              ),
              verticalMediumSpace,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewText.headingThree("Transactions"),
              ),
              verticalSmallSpace,
              const Divider(thickness: 1.5),
              verticalSmallSpace,
              const TransactionHistoryCard(),
              verticalMediumSpace
            ],
          )
      ),
    );
  }
}
