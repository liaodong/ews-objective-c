#import <Foundation/Foundation.h>




#import "EWSPermissionReadAccessType.h"
#import "EWSPermissionLevelType.h"
#import "EWSBasePermissionType.h"



/* PermissionType */
@interface EWSPermissionType : EWSBasePermissionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* readItems        /* EWSPermissionReadAccessType */;
@property (retain) NSString* permissionLevel  /* EWSPermissionLevelType */;


@end

