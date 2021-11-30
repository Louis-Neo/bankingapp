import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

import 'startup_view_model.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
        onModelReady: (model) => SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
        model.runStartUpLogic();
      }),
      viewModelBuilder: () => StartUpViewModel(),
      builder: (context, model, child) => const Scaffold(
        body: Center(
          child: Text("StartUp View"),
        )
      ),
    );
  }
}
