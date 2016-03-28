#import <Foundation/Foundation.h>



@class MPSEWSMailboxData;



/* ArrayOfMailboxData */
@interface MPSEWSArrayOfMailboxData : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSMailboxData*>* mailboxData;


- (void) addMailboxData:(MPSEWSMailboxData*) elem;
@end

