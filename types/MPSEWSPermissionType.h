#import <Foundation/Foundation.h>
#import "MPSEWSBasePermissionType.h"






/* PermissionType */
@interface MPSEWSPermissionType : MPSEWSBasePermissionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* readItems        /* MPSEWSPermissionReadAccessType */;
@property (strong) NSString* permissionLevel  /* MPSEWSPermissionLevelType */;


@end

