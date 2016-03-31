#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfSearchItemKindsType;
@class MPSEWSArrayOfSmtpAddressType;
@class MPSEWSArrayOfStringsType;
@class MPSEWSArrayOfUserMailboxesType;



/* FindMailboxStatisticsByKeywordsType */
@interface MPSEWSFindMailboxStatisticsByKeywordsType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindMailboxStatisticsByKeywordsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfUserMailboxesType*   mailboxes;
@property (strong) MPSEWSArrayOfStringsType*         keywords;
@property (strong) NSString*                         language                  /* xs:string */;
@property (strong) MPSEWSArrayOfSmtpAddressType*     senders;
@property (strong) MPSEWSArrayOfSmtpAddressType*     recipients;
@property (strong) NSString*                         fromDate                  /* xs:dateTime */;
@property (strong) NSString*                         toDate                    /* xs:dateTime */;
@property (strong) MPSEWSArrayOfSearchItemKindsType* messageTypes;
@property (strong) NSNumber*                         searchDumpster            /* xs:boolean */;
@property (strong) NSNumber*                         includePersonalArchive    /* xs:boolean */;
@property (strong) NSNumber*                         includeUnsearchableItems  /* xs:boolean */;


@end

