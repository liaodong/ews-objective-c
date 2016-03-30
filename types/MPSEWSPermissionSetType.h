#import <Foundation/Foundation.h>



@class MPSEWSArrayOfPermissionsType;
@class MPSEWSArrayOfUnknownEntriesType;



/* PermissionSetType */
@interface MPSEWSPermissionSetType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPermissionSetType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfPermissionsType*    permissions;
@property (strong) MPSEWSArrayOfUnknownEntriesType* unknownEntries;


@end

