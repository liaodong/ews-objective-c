#import <Foundation/Foundation.h>



@class EWSArrayOfRealItemsType;



/* GroupedItemsType */
@interface EWSGroupedItemsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                groupIndex  /* xs:string */;
@property (strong) EWSArrayOfRealItemsType* items;


@end

