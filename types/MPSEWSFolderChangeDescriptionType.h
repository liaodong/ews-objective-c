#import <Foundation/Foundation.h>
#import "MPSEWSChangeDescriptionType.h"






/* FolderChangeDescriptionType */
@interface MPSEWSFolderChangeDescriptionType : MPSEWSChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFolderChangeDescriptionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

