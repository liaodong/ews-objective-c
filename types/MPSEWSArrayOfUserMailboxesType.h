#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSUserMailboxType;



/* ArrayOfUserMailboxesType */
@interface MPSEWSArrayOfUserMailboxesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfUserMailboxesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUserMailboxType*>* userMailbox;


- (void) addUserMailbox:(MPSEWSUserMailboxType*) elem;
@end

