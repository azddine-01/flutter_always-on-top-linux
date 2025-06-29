# flutter_always_on_top_linux

اجعل تطبيقك على Linux دائمًا في الأعلى باستخدام GTK و C عبر FFI.

## التثبيت

```yaml
dependencies:
  flutter_always_on_top_linux: ^0.1.0
```

## الاستخدام

```dart
import 'package:flutter_always_on_top_linux/flutter_always_on_top_linux.dart';

void main() {
  runApp(MyApp());

  WidgetsBinding.instance.addPostFrameCallback((_) {
    FlutterAlwaysOnTopLinux.setAlwaysOnTop(true);
  });
}
```

## الملاحظات
- تعمل فقط على **Linux (X11 + GTK3)**
- لا تحتاج أي إعداد إضافي
