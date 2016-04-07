#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSUserIdType;



/* ArrayOfUserIdType */
@interface MPSEWSArrayOfUserIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfUserIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUserIdType*>* userId;


- (void) addUserId:(MPSEWSUserIdType*) elem;
@end

