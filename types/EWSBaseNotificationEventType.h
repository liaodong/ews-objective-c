#import <Foundation/Foundation.h>




#import "EWSWatermarkType.h"



/* BaseNotificationEventType */
@interface EWSBaseNotificationEventType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* watermark  /* EWSWatermarkType */;


@end

