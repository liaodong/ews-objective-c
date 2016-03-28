#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSFindItemParentType;



/* FindItemResponseMessageType */
@interface EWSFindItemResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFindItemParentType* rootFolder;


@end

