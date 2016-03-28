#import <Foundation/Foundation.h>



@class MPSEWSPermissionType;



/* ArrayOfPermissionsType */
@interface MPSEWSArrayOfPermissionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPermissionType* permission;


@end

