#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* AttachmentResponseShapeType */
@interface MPSEWSAttachmentResponseShapeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttachmentResponseShapeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                includeMimeContent    /* xs:boolean */;
@property (strong) NSString*                                bodyType              /* MPSEWSBodyTypeResponseType */;
@property (strong) NSNumber*                                filterHtmlContent     /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

