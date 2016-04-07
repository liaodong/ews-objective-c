#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfPermissionsType;
@class MPSEWSArrayOfUnknownEntriesType;



/* PermissionSetType */
@interface MPSEWSPermissionSetType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPermissionSetType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfPermissionsType*    permissions;
@property (strong) MPSEWSArrayOfUnknownEntriesType* unknownEntries;


@end

