#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* ItemResponseShapeType */
@interface MPSEWSItemResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                baseShape             /* MPSEWSDefaultShapeNamesType */;
@property (strong) NSNumber*                                includeMimeContent    /* xs:boolean */;
@property (strong) NSString*                                bodyType              /* MPSEWSBodyTypeResponseType */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

