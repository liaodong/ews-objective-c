#import <Foundation/Foundation.h>



@class EWSEmailAddressType;



/* ArrayOfRecipientsType */
@interface EWSArrayOfRecipientsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddressType* mailbox;


@end

