#import <Foundation/Foundation.h>
#import "MPSEWSBasePermissionType.h"






/* PermissionType */
@interface MPSEWSPermissionType : MPSEWSBasePermissionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPermissionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* readItems        /* MPSEWSPermissionReadAccessType */;
@property (strong) NSString* permissionLevel  /* MPSEWSPermissionLevelType */;


@end

