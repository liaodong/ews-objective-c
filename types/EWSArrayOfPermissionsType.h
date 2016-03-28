#import <Foundation/Foundation.h>



@class EWSPermissionType;



/* ArrayOfPermissionsType */
@interface EWSArrayOfPermissionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSPermissionType* permission;


@end

