#import <Foundation/Foundation.h>



@class MPSEWSPermissionType;



/* ArrayOfPermissionsType */
@interface MPSEWSArrayOfPermissionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPermissionType*>* permission;


- (void) addPermission:(MPSEWSPermissionType*) elem;
@end

