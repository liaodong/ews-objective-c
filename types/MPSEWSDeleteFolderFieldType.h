#import <Foundation/Foundation.h>
#import "MPSEWSFolderChangeDescriptionType.h"






/* DeleteFolderFieldType */
@interface MPSEWSDeleteFolderFieldType : MPSEWSFolderChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteFolderFieldType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

