#import <Foundation/Foundation.h>
#import "MPSEWSMessageType.h"



@class MPSEWSItemIdType;



/* ResponseObjectCoreType */
@interface MPSEWSResponseObjectCoreType : MPSEWSMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* referenceItemId;


@end

