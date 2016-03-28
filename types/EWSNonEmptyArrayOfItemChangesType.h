#import <Foundation/Foundation.h>



@class EWSItemChangeType;



/* NonEmptyArrayOfItemChangesType */
@interface EWSNonEmptyArrayOfItemChangesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSItemChangeType*>* itemChange;


- (void) addItemChange:(EWSItemChangeType*) elem;
@end

