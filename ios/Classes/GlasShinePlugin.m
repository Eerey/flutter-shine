#import "GlasShinePlugin.h"
#if __has_include(<glas_shine/glas_shine-Swift.h>)
#import <glas_shine/glas_shine-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "glas_shine-Swift.h"
#endif

@implementation GlasShinePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGlasShinePlugin registerWithRegistrar:registrar];
}
@end
