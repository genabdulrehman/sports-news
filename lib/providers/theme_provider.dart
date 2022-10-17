import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isLightTheme = false;

  bool get isLightTheme => _isLightTheme;

  void changeTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }
}
