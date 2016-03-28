#import <Foundation/Foundation.h>
#import "EWSBasePermissionType.h"






/* PermissionType */
@interface EWSPermissionType : EWSBasePermissionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* readItems        /* EWSPermissionReadAccessType */;
@property (strong) NSString* permissionLevel  /* EWSPermissionLevelType */;


@end

