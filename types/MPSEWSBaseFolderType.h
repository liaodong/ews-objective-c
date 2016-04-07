#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEffectiveRightsType;
@class MPSEWSExtendedPropertyType;
@class MPSEWSFolderIdType;
@class MPSEWSManagedFolderInformationType;



/* BaseFolderType */
@interface MPSEWSBaseFolderType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseFolderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*                          folderId;
@property (strong) MPSEWSFolderIdType*                          parentFolderId;
@property (strong) NSString*                                    folderClass               /* xs:string */;
@property (strong) NSString*                                    displayName               /* xs:string */;
@property (strong) NSNumber*                                    totalCount                /* xs:int */;
@property (strong) NSNumber*                                    childFolderCount          /* xs:int */;
@property (strong) NSMutableArray<MPSEWSExtendedPropertyType*>* extendedProperty;
@property (strong) MPSEWSManagedFolderInformationType*          managedFolderInformation;
@property (strong) MPSEWSEffectiveRightsType*                   effectiveRights;


- (void) addExtendedProperty:(MPSEWSExtendedPropertyType*) elem;
@end

