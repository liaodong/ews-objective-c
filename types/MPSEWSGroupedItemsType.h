#import <Foundation/Foundation.h>



@class MPSEWSArrayOfRealItemsType;



/* GroupedItemsType */
@interface MPSEWSGroupedItemsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                   groupIndex  /* xs:string */;
@property (strong) MPSEWSArrayOfRealItemsType* items;


@end

