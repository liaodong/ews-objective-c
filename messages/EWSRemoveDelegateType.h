#import <Foundation/Foundation.h>
#import "EWSBaseDelegateType.h"



@class EWSArrayOfUserIdType;



/* RemoveDelegateType */
@interface EWSRemoveDelegateType : EWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfUserIdType* userIds;


@end

