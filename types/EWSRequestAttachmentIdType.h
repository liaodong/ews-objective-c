#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSBaseItemIdType.h"



/* RequestAttachmentIdType */
@interface EWSRequestAttachmentIdType : EWSBaseItemIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* id     /* xs:string */;


@end

