#import <Foundation/Foundation.h>
#import "MPSEWSItemInfoResponseMessageType.h"



@class MPSEWSConflictResultsType;



/* UpdateItemResponseMessageType */
@interface MPSEWSUpdateItemResponseMessageType : MPSEWSItemInfoResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateItemResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConflictResultsType* conflictResults;


@end

