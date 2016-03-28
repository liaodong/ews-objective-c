#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfItemChangeDescriptionsType;



/* ItemChangeType */
@interface MPSEWSItemChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfItemChangeDescriptionsType* updates;


@end

