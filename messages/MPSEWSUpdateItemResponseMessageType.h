#import <Foundation/Foundation.h>
#import "MPSEWSItemInfoResponseMessageType.h"



@class MPSEWSConflictResultsType;



/* UpdateItemResponseMessageType */
@interface MPSEWSUpdateItemResponseMessageType : MPSEWSItemInfoResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateItemResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConflictResultsType* conflictResults;


@end

