#ifndef FLUTTER_ALWAYS_ON_TOP_LINUX_H
#define FLUTTER_ALWAYS_ON_TOP_LINUX_H

#include <gtk/gtk.h>

#ifdef __cplusplus
extern "C" {
#endif

void set_window_always_on_top(GtkWindow* window, gboolean on);

GtkWindow* get_flutter_window();

#ifdef __cplusplus
}
#endif

#endif
