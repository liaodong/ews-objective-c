#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* SingleRecipientType */
@interface MPSEWSSingleRecipientType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSingleRecipientType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;


@end

