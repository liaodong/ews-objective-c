#import <Foundation/Foundation.h>



@class MPSEWSItemChangeType;



/* NonEmptyArrayOfItemChangesType */
@interface MPSEWSNonEmptyArrayOfItemChangesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfItemChangesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemChangeType*>* itemChange;


- (void) addItemChange:(MPSEWSItemChangeType*) elem;
@end

