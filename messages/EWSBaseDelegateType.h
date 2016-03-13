#import <Foundation/Foundation.h>




#import "../types/EWSEmailAddressType.h"
#import "EWSBaseRequestType.h"



/* BaseDelegateType */
@interface EWSBaseDelegateType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSEmailAddressType* mailbox;


@end

