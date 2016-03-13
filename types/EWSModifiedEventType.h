#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSBaseObjectChangedEventType.h"



/* ModifiedEventType */
@interface EWSModifiedEventType : EWSBaseObjectChangedEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* unreadCount  /* xs:int */;


@end

