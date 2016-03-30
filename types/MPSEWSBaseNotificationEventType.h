#import <Foundation/Foundation.h>






/* BaseNotificationEventType */
@interface MPSEWSBaseNotificationEventType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseNotificationEventType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* watermark  /* MPSEWSWatermarkType */;


@end

