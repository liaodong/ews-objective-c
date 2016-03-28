#import <Foundation/Foundation.h>
#import "MPSEWSBaseItemIdType.h"






/* RequestAttachmentIdType */
@interface MPSEWSRequestAttachmentIdType : MPSEWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

