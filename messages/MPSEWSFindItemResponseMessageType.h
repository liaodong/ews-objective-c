#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSFindItemParentType;



/* FindItemResponseMessageType */
@interface MPSEWSFindItemResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFindItemParentType* rootFolder;


@end

