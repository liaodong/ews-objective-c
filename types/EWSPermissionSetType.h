#import <Foundation/Foundation.h>



@class EWSArrayOfPermissionsType;
@class EWSArrayOfUnknownEntriesType;



/* PermissionSetType */
@interface EWSPermissionSetType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfPermissionsType*    permissions;
@property (strong) EWSArrayOfUnknownEntriesType* unknownEntries;


@end

