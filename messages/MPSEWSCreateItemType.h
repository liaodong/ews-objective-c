#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfAllItemsType;
@class MPSEWSTargetFolderIdType;



/* CreateItemType */
@interface MPSEWSCreateItemType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                          messageDisposition      /* MPSEWSMessageDispositionType */;
@property (strong) NSString*                          sendMeetingInvitations  /* MPSEWSCalendarItemCreateOrDeleteOperationType */;
@property (strong) MPSEWSTargetFolderIdType*          savedItemFolderId;
@property (strong) MPSEWSNonEmptyArrayOfAllItemsType* items;


@end

