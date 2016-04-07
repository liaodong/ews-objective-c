#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSMailboxData;



/* ArrayOfMailboxData */
@interface MPSEWSArrayOfMailboxData : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfMailboxData*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSMailboxData*>* mailboxData;


- (void) addMailboxData:(MPSEWSMailboxData*) elem;
@end

