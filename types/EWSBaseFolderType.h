#import <Foundation/Foundation.h>



@class EWSEffectiveRightsType;
@class EWSExtendedPropertyType;
@class EWSFolderIdType;
@class EWSManagedFolderInformationType;



/* BaseFolderType */
@interface EWSBaseFolderType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFolderIdType*                          folderId;
@property (strong) EWSFolderIdType*                          parentFolderId;
@property (strong) NSString*                                 folderClass               /* xs:string */;
@property (strong) NSString*                                 displayName               /* xs:string */;
@property (strong) NSNumber*                                 totalCount                /* xs:int */;
@property (strong) NSNumber*                                 childFolderCount          /* xs:int */;
@property (strong) NSMutableArray<EWSExtendedPropertyType*>* extendedProperty;
@property (strong) EWSManagedFolderInformationType*          managedFolderInformation;
@property (strong) EWSEffectiveRightsType*                   effectiveRights;


- (void) addExtendedProperty:(EWSExtendedPropertyType*) elem;
@end

