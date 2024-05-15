import 'package:get_it/get_it.dart';

import 'src/custom_widgets/custom_text_style.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<CustomTextStyle>(CustomTextStyle());
}
