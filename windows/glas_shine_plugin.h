#ifndef FLUTTER_PLUGIN_GLAS_SHINE_PLUGIN_H_
#define FLUTTER_PLUGIN_GLAS_SHINE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace glas_shine {

class GlasShinePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  GlasShinePlugin();

  virtual ~GlasShinePlugin();

  // Disallow copy and assign.
  GlasShinePlugin(const GlasShinePlugin&) = delete;
  GlasShinePlugin& operator=(const GlasShinePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace glas_shine

#endif  // FLUTTER_PLUGIN_GLAS_SHINE_PLUGIN_H_
