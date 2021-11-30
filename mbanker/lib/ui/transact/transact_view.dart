import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'transact_view_model.dart';

class TransactView extends StatelessWidget {
  const TransactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TransactViewModel>.reactive(
      viewModelBuilder: () => TransactViewModel(),
      builder: (context, model, child) => const Scaffold(
          body: Center(
            child: Text("Transact View"),
          )
      ),
    );
  }
}
