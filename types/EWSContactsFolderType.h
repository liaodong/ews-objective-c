#import <Foundation/Foundation.h>
#import "EWSBaseFolderType.h"



@class EWSPermissionSetType;



/* ContactsFolderType */
@interface EWSContactsFolderType : EWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSPermissionSetType* permissionSet;


@end

