#import <Foundation/Foundation.h>



@class MPSEWSArrayOfRealItemsType;



/* GroupedItemsType */
@interface MPSEWSGroupedItemsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGroupedItemsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                   groupIndex  /* xs:string */;
@property (strong) MPSEWSArrayOfRealItemsType* items;


@end

