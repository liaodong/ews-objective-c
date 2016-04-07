#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* FolderResponseShapeType */
@interface MPSEWSFolderResponseShapeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFolderResponseShapeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                baseShape             /* MPSEWSDefaultShapeNamesType */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

