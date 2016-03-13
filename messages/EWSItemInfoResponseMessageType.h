#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfRealItemsType.h"
#import "EWSResponseMessageType.h"



/* ItemInfoResponseMessageType */
@interface EWSItemInfoResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfRealItemsType* items;


@end

