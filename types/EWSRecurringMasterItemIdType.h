#import <Foundation/Foundation.h>
#import "EWSBaseItemIdType.h"






/* RecurringMasterItemIdType */
@interface EWSRecurringMasterItemIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* occurrenceId  /* EWSDerivedItemIdType */;
@property (strong) NSString* changeKey     /* xs:string */;


@end

