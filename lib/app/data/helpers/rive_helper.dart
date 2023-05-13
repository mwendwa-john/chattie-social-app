import 'package:rive/rive.dart';

class RiveHelper {
  static SMIBool getRiveInput(Artboard artboard,
      {required String stateMachineName,}) {
    final controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);
    artboard.addController(controller!);
    return controller.findInput<bool>('active') as SMIBool;
  }

  static void changeSMIBoolState(SMIBool input) {
    input.change(true);
    Future.delayed(
      const Duration(seconds: 1),
      () {
        input.change(false);
      },
    );
  }
}
