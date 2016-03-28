#import <Foundation/Foundation.h>






/* BaseNotificationEventType */
@interface MPSEWSBaseNotificationEventType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* watermark  /* MPSEWSWatermarkType */;


@end

