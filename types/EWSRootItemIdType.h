#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSBaseItemIdType.h"



/* RootItemIdType */
@interface EWSRootItemIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* rootItemId         /* xs:string */;
@property (retain) NSString* rootItemChangeKey  /* xs:string */;


@end

