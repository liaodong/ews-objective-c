#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSBodyTypeResponseType.h"
#import "../types/EWSDefaultShapeNamesType.h"
#import "../types/EWSNonEmptyArrayOfPathsToElementType.h"



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

