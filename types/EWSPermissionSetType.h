#import <Foundation/Foundation.h>




#import "EWSArrayOfUnknownEntriesType.h"
#import "EWSArrayOfPermissionsType.h"



/* PermissionSetType */
@interface EWSPermissionSetType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfPermissionsType*    permissions;
@property (retain) EWSArrayOfUnknownEntriesType* unknownEntries;


@end

