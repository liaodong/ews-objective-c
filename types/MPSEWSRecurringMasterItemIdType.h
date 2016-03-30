#import <Foundation/Foundation.h>
#import "MPSEWSBaseItemIdType.h"






/* RecurringMasterItemIdType */
@interface MPSEWSRecurringMasterItemIdType : MPSEWSBaseItemIdType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecurringMasterItemIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* occurrenceId  /* MPSEWSDerivedItemIdType */;
@property (strong) NSString* changeKey     /* xs:string */;


@end

