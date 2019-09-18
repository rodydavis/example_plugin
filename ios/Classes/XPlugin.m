#import "XPlugin.h"
#import <x_plugin/x_plugin-Swift.h>

@implementation XPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftXPlugin registerWithRegistrar:registrar];
}
@end
