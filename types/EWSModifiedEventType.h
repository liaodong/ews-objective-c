#import <Foundation/Foundation.h>
#import "EWSBaseObjectChangedEventType.h"






/* ModifiedEventType */
@interface EWSModifiedEventType : EWSBaseObjectChangedEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* unreadCount  /* xs:int */;


@end

