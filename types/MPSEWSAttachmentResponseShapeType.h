#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* AttachmentResponseShapeType */
@interface MPSEWSAttachmentResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                includeMimeContent    /* xs:boolean */;
@property (strong) NSString*                                bodyType              /* MPSEWSBodyTypeResponseType */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

