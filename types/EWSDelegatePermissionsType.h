#import <Foundation/Foundation.h>




#import "../types/EWSDelegateFolderPermissionLevelType.h"



/* DelegatePermissionsType */
@interface EWSDelegatePermissionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* calendarFolderPermissionLevel  /* EWSDelegateFolderPermissionLevelType */;
@property (retain) NSString* tasksFolderPermissionLevel     /* EWSDelegateFolderPermissionLevelType */;
@property (retain) NSString* inboxFolderPermissionLevel     /* EWSDelegateFolderPermissionLevelType */;
@property (retain) NSString* contactsFolderPermissionLevel  /* EWSDelegateFolderPermissionLevelType */;
@property (retain) NSString* notesFolderPermissionLevel     /* EWSDelegateFolderPermissionLevelType */;
@property (retain) NSString* journalFolderPermissionLevel   /* EWSDelegateFolderPermissionLevelType */;


@end

