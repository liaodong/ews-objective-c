#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSFolderResponseShapeType;
@class MPSEWSFractionalPageViewType;
@class MPSEWSIndexedPageViewType;
@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSRestrictionType;



/* FindFolderType */
@interface MPSEWSFindFolderType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindFolderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               traversal                 /* MPSEWSFolderQueryTraversalType */;
@property (strong) MPSEWSFolderResponseShapeType*          folderShape;
@property (strong) MPSEWSIndexedPageViewType*              indexedPageFolderView;
@property (strong) MPSEWSFractionalPageViewType*           fractionalPageFolderView;
@property (strong) MPSEWSRestrictionType*                  restriction;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;


@end

