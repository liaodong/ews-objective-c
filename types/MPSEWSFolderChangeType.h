#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSDistinguishedFolderIdType;
@class MPSEWSFolderIdType;
@class MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType;



/* FolderChangeType */
@interface MPSEWSFolderChangeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFolderChangeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*                                folderId;
@property (strong) MPSEWSDistinguishedFolderIdType*                   distinguishedFolderId;
@property (strong) MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType* updates;


@end

