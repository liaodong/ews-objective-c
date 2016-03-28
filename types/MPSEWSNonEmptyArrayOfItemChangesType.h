#import <Foundation/Foundation.h>



@class MPSEWSItemChangeType;



/* NonEmptyArrayOfItemChangesType */
@interface MPSEWSNonEmptyArrayOfItemChangesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemChangeType*>* itemChange;


- (void) addItemChange:(MPSEWSItemChangeType*) elem;
@end

