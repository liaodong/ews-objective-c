#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* SingleRecipientType */
@interface MPSEWSSingleRecipientType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;


@end

