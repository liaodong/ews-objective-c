#import <Foundation/Foundation.h>



@class MPSEWSArrayOfGroupedItemsType;
@class MPSEWSArrayOfRealItemsType;



/* FindItemParentType */
@interface MPSEWSFindItemParentType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindItemParentType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                      indexedPagingOffset      /* xs:int */;
@property (strong) NSNumber*                      numeratorOffset          /* xs:int */;
@property (strong) NSNumber*                      absoluteDenominator      /* xs:int */;
@property (strong) NSNumber*                      includesLastItemInRange  /* xs:boolean */;
@property (strong) NSNumber*                      totalItemsInView         /* xs:int */;
@property (strong) MPSEWSArrayOfRealItemsType*    items;
@property (strong) MPSEWSArrayOfGroupedItemsType* groups;


@end

