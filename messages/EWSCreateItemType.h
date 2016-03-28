#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfAllItemsType;
@class EWSTargetFolderIdType;



/* CreateItemType */
@interface EWSCreateItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                       messageDisposition      /* EWSMessageDispositionType */;
@property (strong) NSString*                       sendMeetingInvitations  /* EWSCalendarItemCreateOrDeleteOperationType */;
@property (strong) EWSTargetFolderIdType*          savedItemFolderId;
@property (strong) EWSNonEmptyArrayOfAllItemsType* items;


@end

