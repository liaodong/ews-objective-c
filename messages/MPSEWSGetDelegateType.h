#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateType.h"



@class MPSEWSArrayOfUserIdType;



/* GetDelegateType */
@interface MPSEWSGetDelegateType : MPSEWSBaseDelegateType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetDelegateType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                includePermissions  /* xs:boolean */;
@property (strong) MPSEWSArrayOfUserIdType* userIds;


@end

