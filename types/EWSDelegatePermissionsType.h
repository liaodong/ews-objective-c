#import <Foundation/Foundation.h>






/* DelegatePermissionsType */
@interface EWSDelegatePermissionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* calendarFolderPermissionLevel  /* EWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* tasksFolderPermissionLevel     /* EWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* inboxFolderPermissionLevel     /* EWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* contactsFolderPermissionLevel  /* EWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* notesFolderPermissionLevel     /* EWSDelegateFolderPermissionLevelType */;
@property (strong) NSString* journalFolderPermissionLevel   /* EWSDelegateFolderPermissionLevelType */;


@end

