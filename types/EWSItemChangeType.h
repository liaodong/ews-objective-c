#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfItemChangeDescriptionsType.h"



/* ItemChangeType */
@interface EWSItemChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSNonEmptyArrayOfItemChangeDescriptionsType* updates;


@end

