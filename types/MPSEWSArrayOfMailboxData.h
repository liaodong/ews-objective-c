#import <Foundation/Foundation.h>



@class MPSEWSMailboxData;



/* ArrayOfMailboxData */
@interface MPSEWSArrayOfMailboxData : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfMailboxData*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSMailboxData*>* mailboxData;


- (void) addMailboxData:(MPSEWSMailboxData*) elem;
@end

