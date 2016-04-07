#import <Foundation/Foundation.h>
#import "MPSEWSBaseObjectChangedEventType.h"






/* ModifiedEventType */
@interface MPSEWSModifiedEventType : MPSEWSBaseObjectChangedEventType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSModifiedEventType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* unreadCount  /* xs:int */;


@end

