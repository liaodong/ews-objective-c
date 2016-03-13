#import <Foundation/Foundation.h>




#import "EWSPermissionSetType.h"
#import "EWSBaseFolderType.h"



/* ContactsFolderType */
@interface EWSContactsFolderType : EWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSPermissionSetType* permissionSet;


@end

