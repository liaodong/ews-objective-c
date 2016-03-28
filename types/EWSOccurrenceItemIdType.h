#import <Foundation/Foundation.h>
#import "EWSBaseItemIdType.h"






/* OccurrenceItemIdType */
@interface EWSOccurrenceItemIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* recurringMasterId  /* EWSDerivedItemIdType */;
@property (strong) NSString* changeKey          /* xs:string */;
@property (strong) NSNumber* instanceIndex      /* xs:int */;


@end

