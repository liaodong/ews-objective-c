#import <Foundation/Foundation.h>



@class EWSEmailAddressType;



/* SingleRecipientType */
@interface EWSSingleRecipientType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddressType* mailbox;


@end

