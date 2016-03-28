#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfPathsToElementType;



/* FolderResponseShapeType */
@interface EWSFolderResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                             baseShape             /* EWSDefaultShapeNamesType */;
@property (strong) EWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

