#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSEmailAddressType;



/* BaseDelegateType */
@interface EWSBaseDelegateType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddressType* mailbox;


@end

