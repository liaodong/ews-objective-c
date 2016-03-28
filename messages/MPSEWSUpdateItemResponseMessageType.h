#import <Foundation/Foundation.h>
#import "MPSEWSItemInfoResponseMessageType.h"



@class MPSEWSConflictResultsType;



/* UpdateItemResponseMessageType */
@interface MPSEWSUpdateItemResponseMessageType : MPSEWSItemInfoResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConflictResultsType* conflictResults;


@end

