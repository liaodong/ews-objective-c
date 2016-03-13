#import <Foundation/Foundation.h>




#import "../types/EWSPermissionLevelType.h"
#import "../types/EWSPermissionReadAccessType.h"
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

