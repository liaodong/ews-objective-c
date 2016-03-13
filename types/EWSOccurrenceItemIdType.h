#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDerivedItemIdType.h"
#import "EWSBaseItemIdType.h"



/* OccurrenceItemIdType */
@interface EWSOccurrenceItemIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* recurringMasterId  /* EWSDerivedItemIdType */;
@property (retain) NSString* changeKey          /* xs:string */;
@property (retain) NSNumber* instanceIndex      /* xs:int */;


@end

