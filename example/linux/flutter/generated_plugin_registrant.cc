//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <glas_shine/glas_shine_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) glas_shine_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "GlasShinePlugin");
  glas_shine_plugin_register_with_registrar(glas_shine_registrar);
}
