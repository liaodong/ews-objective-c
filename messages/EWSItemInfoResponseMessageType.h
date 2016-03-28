#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSArrayOfRealItemsType;



/* ItemInfoResponseMessageType */
@interface EWSItemInfoResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfRealItemsType* items;


@end

