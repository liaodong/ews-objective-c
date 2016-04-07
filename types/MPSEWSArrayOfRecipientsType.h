#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;



/* ArrayOfRecipientsType */
@interface MPSEWSArrayOfRecipientsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRecipientsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEmailAddressType*>* mailbox;


- (void) addMailbox:(MPSEWSEmailAddressType*) elem;
@end

