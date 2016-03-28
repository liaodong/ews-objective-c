#import <Foundation/Foundation.h>



@class EWSArrayOfGroupedItemsType;
@class EWSArrayOfRealItemsType;



/* FindItemParentType */
@interface EWSFindItemParentType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                   indexedPagingOffset      /* xs:int */;
@property (strong) NSNumber*                   numeratorOffset          /* xs:int */;
@property (strong) NSNumber*                   absoluteDenominator      /* xs:int */;
@property (strong) NSNumber*                   includesLastItemInRange  /* xs:boolean */;
@property (strong) NSNumber*                   totalItemsInView         /* xs:int */;
@property (strong) EWSArrayOfRealItemsType*    items;
@property (strong) EWSArrayOfGroupedItemsType* groups;


@end

