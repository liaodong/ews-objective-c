#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSEffectiveRightsType.h"
#import "EWSExtendedPropertyType.h"
#import "EWSManagedFolderInformationType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSFolderIdType.h"



/* BaseFolderType */
@interface EWSBaseFolderType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFolderIdType*                          folderId;
@property (retain) EWSFolderIdType*                          parentFolderId;
@property (retain) NSString*                                 folderClass               /* xs:string */;
@property (retain) NSString*                                 displayName               /* xs:string */;
@property (retain) NSNumber*                                 totalCount                /* xs:int */;
@property (retain) NSNumber*                                 childFolderCount          /* xs:int */;
@property (retain) NSMutableArray<EWSExtendedPropertyType*>* extendedProperty;
@property (retain) EWSManagedFolderInformationType*          managedFolderInformation;
@property (retain) EWSEffectiveRightsType*                   effectiveRights;


- (void) addExtendedProperty:(EWSExtendedPropertyType*) elem;
@end

