#import "FlutterAdyenDropInPlugin.h"
#import <flutter_adyen_drop_in/flutter_adyen_drop_in-Swift.h>

@implementation FlutterAdyenDropInPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterAdyenDropInPlugin registerWithRegistrar:registrar];
}
@end
