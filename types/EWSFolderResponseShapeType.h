#import <Foundation/Foundation.h>




#import "EWSNonEmptyArrayOfPathsToElementType.h"
#import "EWSDefaultShapeNamesType.h"



/* FolderResponseShapeType */
@interface EWSFolderResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                             baseShape             /* EWSDefaultShapeNamesType */;
@property (retain) EWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

