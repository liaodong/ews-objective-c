#import <Foundation/Foundation.h>



@class EWSItemIdType;



/* ArrayOfBaseItemIdsType */
@interface EWSArrayOfBaseItemIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType* itemId;


@end

