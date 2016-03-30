#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSEmailAddressType;



/* BaseDelegateType */
@interface MPSEWSBaseDelegateType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseDelegateType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;


@end

