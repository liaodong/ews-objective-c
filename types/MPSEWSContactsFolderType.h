#import <Foundation/Foundation.h>
#import "MPSEWSBaseFolderType.h"



@class MPSEWSPermissionSetType;



/* ContactsFolderType */
@interface MPSEWSContactsFolderType : MPSEWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPermissionSetType* permissionSet;


@end

