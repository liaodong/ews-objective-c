#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSInvalidRecipientType;



/* ArrayOfInvalidRecipientsType */
@interface MPSEWSArrayOfInvalidRecipientsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfInvalidRecipientsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSInvalidRecipientType*>* invalidRecipient;


- (void) addInvalidRecipient:(MPSEWSInvalidRecipientType*) elem;
@end

