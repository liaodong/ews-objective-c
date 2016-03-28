#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfPathsToElementType;



/* AttachmentResponseShapeType */
@interface EWSAttachmentResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                             includeMimeContent    /* xs:boolean */;
@property (strong) NSString*                             bodyType              /* EWSBodyTypeResponseType */;
@property (strong) EWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

