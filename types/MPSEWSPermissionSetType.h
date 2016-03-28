#import <Foundation/Foundation.h>



@class MPSEWSArrayOfPermissionsType;
@class MPSEWSArrayOfUnknownEntriesType;



/* PermissionSetType */
@interface MPSEWSPermissionSetType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfPermissionsType*    permissions;
@property (strong) MPSEWSArrayOfUnknownEntriesType* unknownEntries;


@end

