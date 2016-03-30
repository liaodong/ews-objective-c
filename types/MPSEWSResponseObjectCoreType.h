#import <Foundation/Foundation.h>
#import "MPSEWSMessageType.h"



@class MPSEWSItemIdType;



/* ResponseObjectCoreType */
@interface MPSEWSResponseObjectCoreType : MPSEWSMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSResponseObjectCoreType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* referenceItemId;


@end

