#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSFolderIdType;



/* GetSharingFolderResponseMessageType */
@interface MPSEWSGetSharingFolderResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetSharingFolderResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType* sharingFolderId;


@end

