#import <Foundation/Foundation.h>




#import "../types/EWSFindItemParentType.h"
#import "EWSResponseMessageType.h"



/* FindItemResponseMessageType */
@interface EWSFindItemResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFindItemParentType* rootFolder;


@end

