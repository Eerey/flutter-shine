#include "include/glas_shine/glas_shine_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "glas_shine_plugin.h"

void GlasShinePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  glas_shine::GlasShinePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
