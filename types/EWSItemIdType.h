#import <Foundation/Foundation.h>
#import "EWSBaseItemIdType.h"






/* ItemIdType */
@interface EWSItemIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id         /* xs:string */;
@property (strong) NSString* changeKey  /* xs:string */;


@end

