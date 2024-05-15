import 'dart:async';

import 'package:brighton/src/utils/string_validations.dart';

import '../../../locator.dart';

class LoginBloc {
  String? _errorMassge;
  StreamController<bool> shouldShowErrorMessageController =
      StreamController<bool>.broadcast();
  bool? isSignedInSuccesfull;

  void showErrorMessage({String? errorMessage}) {
    _errorMassge = errorMessage;
    shouldShowErrorMessageController.sink.add(true);
  }

  void disableErrorMessage() {
    if (_errorMassge != null) {
      _errorMassge = null;
      shouldShowErrorMessageController.sink.add(false);
    }
  }

  bool isValidFields({required String email, required String password}) {
    if (!email.isValidEmail) {
      showErrorMessage(errorMessage: "Your email is not valid");
      return false;
    }
    if (!password.isValidPasswordLength) {
      showErrorMessage(errorMessage: "Your password should not be empty");
      return false;
    }
    return true;
  }

  String? get errorMessageGetter => _errorMassge;
}
