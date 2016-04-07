#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSCalendarViewType;
@class MPSEWSContactsViewType;
@class MPSEWSDistinguishedGroupByType;
@class MPSEWSFractionalPageViewType;
@class MPSEWSGroupByType;
@class MPSEWSIndexedPageViewType;
@class MPSEWSItemResponseShapeType;
@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSNonEmptyArrayOfFieldOrdersType;
@class MPSEWSRestrictionType;



/* FindItemType */
@interface MPSEWSFindItemType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               traversal               /* MPSEWSItemQueryTraversalType */;
@property (strong) MPSEWSItemResponseShapeType*            itemShape;
@property (strong) MPSEWSIndexedPageViewType*              indexedPageItemView;
@property (strong) MPSEWSFractionalPageViewType*           fractionalPageItemView;
@property (strong) MPSEWSCalendarViewType*                 calendarView;
@property (strong) MPSEWSContactsViewType*                 contactsView;
@property (strong) MPSEWSGroupByType*                      groupBy;
@property (strong) MPSEWSDistinguishedGroupByType*         distinguishedGroupBy;
@property (strong) MPSEWSRestrictionType*                  restriction;
@property (strong) MPSEWSNonEmptyArrayOfFieldOrdersType*   sortOrder;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;
@property (strong) NSString*                               queryString             /* xs:string */;


@end

