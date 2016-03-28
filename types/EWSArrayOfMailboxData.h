#import <Foundation/Foundation.h>



@class EWSMailboxData;



/* ArrayOfMailboxData */
@interface EWSArrayOfMailboxData : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSMailboxData*>* mailboxData;


- (void) addMailboxData:(EWSMailboxData*) elem;
@end

