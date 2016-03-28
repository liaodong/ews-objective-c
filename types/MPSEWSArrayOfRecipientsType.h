#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* ArrayOfRecipientsType */
@interface MPSEWSArrayOfRecipientsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;


@end

