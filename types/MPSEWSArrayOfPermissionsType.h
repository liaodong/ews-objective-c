#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSPermissionType;



/* ArrayOfPermissionsType */
@interface MPSEWSArrayOfPermissionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfPermissionsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPermissionType*>* permission;


- (void) addPermission:(MPSEWSPermissionType*) elem;
@end

