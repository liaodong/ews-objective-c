#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* DelegatePermissionsType */
@interface MPSEWSDelegatePermissionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDelegatePermissionsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* calendarFolderPermissionLevel  /* MPSEWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* tasksFolderPermissionLevel     /* MPSEWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* inboxFolderPermissionLevel     /* MPSEWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* contactsFolderPermissionLevel  /* MPSEWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* notesFolderPermissionLevel     /* MPSEWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* journalFolderPermissionLevel   /* MPSEWSDelegateFolderPermissionLevelType */;


@end

