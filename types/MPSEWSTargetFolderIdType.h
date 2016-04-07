#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSDistinguishedFolderIdType;
@class MPSEWSFolderIdType;



/* TargetFolderIdType */
@interface MPSEWSTargetFolderIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTargetFolderIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*              folderId;
@property (strong) MPSEWSDistinguishedFolderIdType* distinguishedFolderId;


@end

