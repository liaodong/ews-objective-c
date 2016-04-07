#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSItemChangeType;



/* NonEmptyArrayOfItemChangesType */
@interface MPSEWSNonEmptyArrayOfItemChangesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfItemChangesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemChangeType*>* itemChange;


- (void) addItemChange:(MPSEWSItemChangeType*) elem;
@end

