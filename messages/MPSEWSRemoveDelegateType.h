#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateType.h"



@class MPSEWSArrayOfUserIdType;



/* RemoveDelegateType */
@interface MPSEWSRemoveDelegateType : MPSEWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfUserIdType* userIds;


@end

