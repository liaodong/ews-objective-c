#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfRealItemsType.h"



/* GroupedItemsType */
@interface EWSGroupedItemsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                groupIndex  /* xs:string */;
@property (retain) EWSArrayOfRealItemsType* items;


@end

