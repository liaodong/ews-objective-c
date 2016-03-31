#import <Foundation/Foundation.h>



@class MPSEWSUserMailboxType;



/* ArrayOfUserMailboxesType */
@interface MPSEWSArrayOfUserMailboxesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfUserMailboxesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUserMailboxType*>* userMailbox;


- (void) addUserMailbox:(MPSEWSUserMailboxType*) elem;
@end

