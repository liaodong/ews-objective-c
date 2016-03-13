#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfPermissionsType.h"
#import "../types/EWSArrayOfUnknownEntriesType.h"



/* PermissionSetType */
@interface EWSPermissionSetType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfPermissionsType*    permissions;
@property (retain) EWSArrayOfUnknownEntriesType* unknownEntries;


@end

