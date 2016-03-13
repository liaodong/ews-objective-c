#import <Foundation/Foundation.h>




#import "EWSBodyTypeResponseType.h"
#import "EWSNonEmptyArrayOfPathsToElementType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "EWSDefaultShapeNamesType.h"



/* ItemResponseShapeType */
@interface EWSItemResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                             baseShape             /* EWSDefaultShapeNamesType */;
@property (retain) NSNumber*                             includeMimeContent    /* xs:boolean */;
@property (retain) NSString*                             bodyType              /* EWSBodyTypeResponseType */;
@property (retain) EWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

