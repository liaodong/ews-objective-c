#import <Foundation/Foundation.h>
#import "EWSBaseItemIdType.h"






/* RequestAttachmentIdType */
@interface EWSRequestAttachmentIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id     /* xs:string */;


@end

