#import <Foundation/Foundation.h>
#import "EWSBaseDelegateType.h"



@class EWSArrayOfUserIdType;



/* GetDelegateType */
@interface EWSGetDelegateType : EWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*             includePermissions  /* xs:boolean */;
@property (strong) EWSArrayOfUserIdType* userIds;


@end

