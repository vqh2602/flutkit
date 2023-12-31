library flutx;

import 'package:flutx_ui/core/logs/log.dart';
import 'package:flutx_ui/themes/app_theme_notifier.dart';

export 'core/routes/routes.dart';
export 'core/state_management/state_management.dart';
export 'extensions/extensions.dart';
export 'icons/two_tone/two_tone_icon.dart';
export 'icons/box_icon/box_icon_data.dart';
export 'mixins/mixins.dart';
export 'styles/styles.dart';
export 'themes/themes.dart';
export 'utils/utils.dart';
export 'widgets/widgets.dart';

class FlutX {
  // entry point of the package
  init() {
    FxAppThemeNotifier().init();
  }

  static enableLog() {
    FxLog.enable();
  }

  static disableLog() {
    FxLog.disable();
  }
}
