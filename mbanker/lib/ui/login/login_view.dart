import 'package:flutter/material.dart';
import 'package:mbanker_ui/mbanker_ui.dart';
import 'package:stacked/stacked.dart';

import 'login_view_model.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LogInViewModel>.reactive(
      viewModelBuilder: () => LogInViewModel(),
      builder: (context, model, child) => Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: ListView(
              children: [
                verticalLargeSpace,
                ViewText.headlineStyle("Login"),
              ]
            ),
          )
      ),
    );
  }
}
