#import "ExamplePlugin.h"
#import <example_plugin/example_plugin-Swift.h>

@implementation ExamplePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExamplePlugin registerWithRegistrar:registrar];
}
@end
