#import <Foundation/Foundation.h>



@class MPSEWSArrayOfItemClassType;
@class MPSEWSArrayOfStringsType;
@class MPSEWSItemIdType;
@class MPSEWSNonEmptyArrayOfBaseItemIdsType;



/* ConversationType */
@interface MPSEWSConversationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConversationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType*                     conversationId;
@property (strong) NSString*                             conversationTopic          /* xs:string */;
@property (strong) MPSEWSArrayOfStringsType*             uniqueRecipients;
@property (strong) MPSEWSArrayOfStringsType*             globalUniqueRecipients;
@property (strong) MPSEWSArrayOfStringsType*             uniqueUnreadSenders;
@property (strong) MPSEWSArrayOfStringsType*             globalUniqueUnreadSenders;
@property (strong) MPSEWSArrayOfStringsType*             uniqueSenders;
@property (strong) MPSEWSArrayOfStringsType*             globalUniqueSenders;
@property (strong) NSString*                             lastDeliveryTime           /* xs:dateTime */;
@property (strong) NSString*                             globalLastDeliveryTime     /* xs:dateTime */;
@property (strong) MPSEWSArrayOfStringsType*             categories;
@property (strong) MPSEWSArrayOfStringsType*             globalCategories;
@property (strong) NSString*                             flagStatus                 /* MPSEWSFlagStatusType */;
@property (strong) NSString*                             globalFlagStatus           /* MPSEWSFlagStatusType */;
@property (strong) NSNumber*                             hasAttachments             /* xs:boolean */;
@property (strong) NSNumber*                             globalHasAttachments       /* xs:boolean */;
@property (strong) NSNumber*                             messageCount               /* xs:int */;
@property (strong) NSNumber*                             globalMessageCount         /* xs:int */;
@property (strong) NSNumber*                             unreadCount                /* xs:int */;
@property (strong) NSNumber*                             globalUnreadCount          /* xs:int */;
@property (strong) NSNumber*                             size                       /* xs:int */;
@property (strong) NSNumber*                             globalSize                 /* xs:int */;
@property (strong) MPSEWSArrayOfItemClassType*           itemClasses;
@property (strong) MPSEWSArrayOfItemClassType*           globalItemClasses;
@property (strong) NSString*                             importance                 /* MPSEWSImportanceChoicesType */;
@property (strong) NSString*                             globalImportance           /* MPSEWSImportanceChoicesType */;
@property (strong) MPSEWSNonEmptyArrayOfBaseItemIdsType* itemIds;
@property (strong) MPSEWSNonEmptyArrayOfBaseItemIdsType* globalItemIds;


@end

