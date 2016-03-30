#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* AttachmentResponseShapeType */
@interface MPSEWSAttachmentResponseShapeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttachmentResponseShapeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                includeMimeContent    /* xs:boolean */;
@property (strong) NSString*                                bodyType              /* MPSEWSBodyTypeResponseType */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

