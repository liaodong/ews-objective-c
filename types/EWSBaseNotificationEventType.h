#import <Foundation/Foundation.h>






/* BaseNotificationEventType */
@interface EWSBaseNotificationEventType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* watermark  /* EWSWatermarkType */;


@end

