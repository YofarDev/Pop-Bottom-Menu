#import "PopBottomMenuPlugin.h"
#if __has_include(<pop_bottom_menu/pop_bottom_menu-Swift.h>)
#import <pop_bottom_menu/pop_bottom_menu-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pop_bottom_menu-Swift.h"
#endif

@implementation PopBottomMenuPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPopBottomMenuPlugin registerWithRegistrar:registrar];
}
@end
