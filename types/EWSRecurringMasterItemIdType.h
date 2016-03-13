#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSDerivedItemIdType.h"
#import "EWSBaseItemIdType.h"



/* RecurringMasterItemIdType */
@interface EWSRecurringMasterItemIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* occurrenceId  /* EWSDerivedItemIdType */;
@property (retain) NSString* changeKey     /* xs:string */;


@end

