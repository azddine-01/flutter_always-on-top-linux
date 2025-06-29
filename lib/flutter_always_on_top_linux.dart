library flutter_always_on_top_linux;

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';

final DynamicLibrary _lib = DynamicLibrary.open('libflutter_always_on_top.so');

typedef _GetWindowC = Pointer<Void> Function();
typedef _SetTopC = Void Function(Pointer<Void>, Int32);

final Pointer<Void> Function() _getWindow =
    _lib.lookup<NativeFunction<_GetWindowC>>('get_flutter_window').asFunction();

final void Function(Pointer<Void>, int) _setTop =
    _lib.lookup<NativeFunction<_SetTopC>>('set_window_always_on_top').asFunction();

/// واجهة Flutter سهلة للمطور
class FlutterAlwaysOnTopLinux {
  /// ضع النافذة دائمًا في الأعلى أو لا
  static void setAlwaysOnTop(bool enabled) {
    try {
      final win = _getWindow();
      if (win != nullptr) {
        _setTop(win, enabled ? 1 : 0);
      } else {
        debugPrint('[flutter_always_on_top_linux] لا يمكن الوصول إلى النافذة.');
      }
    } catch (e) {
      debugPrint('[flutter_always_on_top_linux] فشل: \$e');
    }
  }
}
