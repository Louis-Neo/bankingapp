import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'register_view_model.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      viewModelBuilder: () => RegisterViewModel(),
      builder: (context, model, child) => const Scaffold(
          body: Center(
            child: Text("Register View"),
          )
      ),
    );
  }
}
