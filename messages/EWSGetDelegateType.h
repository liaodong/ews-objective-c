#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSArrayOfUserIdType.h"
#import "EWSBaseDelegateType.h"



/* GetDelegateType */
@interface EWSGetDelegateType : EWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber*                includePermissions  /* xs:boolean */;
@property (retain) NSArray<EWSUserIdType*>* userIds             /* EWSArrayOfUserIdType */;


@end

