#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfPathsToElementType;



/* ItemResponseShapeType */
@interface EWSItemResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                             baseShape             /* EWSDefaultShapeNamesType */;
@property (strong) NSNumber*                             includeMimeContent    /* xs:boolean */;
@property (strong) NSString*                             bodyType              /* EWSBodyTypeResponseType */;
@property (strong) EWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

