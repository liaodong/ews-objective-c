#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfUserIdType.h"
#import "EWSBaseDelegateType.h"



/* RemoveDelegateType */
@interface EWSRemoveDelegateType : EWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSArray<EWSUserIdType*>* userIds  /* EWSArrayOfUserIdType */;


@end

