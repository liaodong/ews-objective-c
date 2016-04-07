#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BaseNotificationEventType */
@interface MPSEWSBaseNotificationEventType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseNotificationEventType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* watermark  /* MPSEWSWatermarkType */;


@end

