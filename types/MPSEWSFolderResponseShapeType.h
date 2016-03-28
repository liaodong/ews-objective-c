#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* FolderResponseShapeType */
@interface MPSEWSFolderResponseShapeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                baseShape             /* MPSEWSDefaultShapeNamesType */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

