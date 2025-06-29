#include "native_window.h"

static GtkWindow* flutter_window = NULL;

extern "C" GtkWindow* get_flutter_window() {
    return flutter_window;
}

void set_flutter_window(GtkWindow* window) {
    flutter_window = window;
}

// في مكان تهيئة النافذة في تطبيق Flutter linux (تعديل MyApplication::OnActivate)
void initialize_flutter_window(GtkWindow* window) {
    set_flutter_window(window);
}
