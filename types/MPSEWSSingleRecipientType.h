#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;



/* SingleRecipientType */
@interface MPSEWSSingleRecipientType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSingleRecipientType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;


@end

