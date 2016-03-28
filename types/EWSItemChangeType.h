#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfItemChangeDescriptionsType;



/* ItemChangeType */
@interface EWSItemChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNonEmptyArrayOfItemChangeDescriptionsType* updates;


@end

