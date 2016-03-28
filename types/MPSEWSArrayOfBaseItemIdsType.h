#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;



/* ArrayOfBaseItemIdsType */
@interface MPSEWSArrayOfBaseItemIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* itemId;


@end

