#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSEmailAddressType;



/* ExpandDLType */
@interface EWSExpandDLType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddressType* mailbox;


@end

