#import <Foundation/Foundation.h>
#import "MPSEWSBaseItemIdType.h"






/* RequestAttachmentIdType */
@interface MPSEWSRequestAttachmentIdType : MPSEWSBaseItemIdType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRequestAttachmentIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

