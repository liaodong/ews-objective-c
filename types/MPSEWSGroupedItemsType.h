#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfRealItemsType;



/* GroupedItemsType */
@interface MPSEWSGroupedItemsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGroupedItemsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                   groupIndex  /* xs:string */;
@property (strong) MPSEWSArrayOfRealItemsType* items;


@end

