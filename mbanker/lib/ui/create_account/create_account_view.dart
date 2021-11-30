import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'create_account_view_model.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CreateAccountViewModel>.reactive(
      viewModelBuilder: () => CreateAccountViewModel(),
      builder: (context, model, child) => const Scaffold(
          body: Center(
            child: Text("Create Account View"),
          )
      ),
    );
  }
}
