#import <Foundation/Foundation.h>
#import "EWSBaseItemIdType.h"






/* RootItemIdType */
@interface EWSRootItemIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* rootItemId         /* xs:string */;
@property (strong) NSString* rootItemChangeKey  /* xs:string */;


@end

