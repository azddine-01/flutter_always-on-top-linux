#include "native_window.h"

void set_window_always_on_top(GtkWindow* window, gboolean on) {
    if (window != NULL) {
        gtk_window_set_keep_above(window, on);
    }
}
