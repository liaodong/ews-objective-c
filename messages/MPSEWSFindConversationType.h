#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSIndexedPageViewType;
@class MPSEWSNonEmptyArrayOfFieldOrdersType;
@class MPSEWSTargetFolderIdType;



/* FindConversationType */
@interface MPSEWSFindConversationType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindConversationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSIndexedPageViewType*            indexedPageItemView;
@property (strong) MPSEWSNonEmptyArrayOfFieldOrdersType* sortOrder;
@property (strong) MPSEWSTargetFolderIdType*             parentFolderId;


@end

