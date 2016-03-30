#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* FolderResponseShapeType */
@interface MPSEWSFolderResponseShapeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFolderResponseShapeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                baseShape             /* MPSEWSDefaultShapeNamesType */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

