#import <Foundation/Foundation.h>

@protocol EWSHandlerProtocol <NSObject>

- (id) construct;
- (void) setElement:(NSString*) elem withObject:(id) value;

@end

