#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSFindItemParentType;



/* FindItemResponseMessageType */
@interface MPSEWSFindItemResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindItemResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFindItemParentType* rootFolder;


@end

