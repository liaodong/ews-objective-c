#import <Foundation/Foundation.h>
#import "MPSEWSBaseItemIdType.h"






/* RootItemIdType */
@interface MPSEWSRootItemIdType : MPSEWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* rootItemId         /* xs:string */;
@property (strong) NSString* rootItemChangeKey  /* xs:string */;


@end

