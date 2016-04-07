#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSNonEmptyArrayOfNotificationEventTypesType;



/* StreamingSubscriptionRequestType */
@interface MPSEWSStreamingSubscriptionRequestType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSStreamingSubscriptionRequestType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                        subscribeToAllFolders  /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType*          folderIds;
@property (strong) MPSEWSNonEmptyArrayOfNotificationEventTypesType* eventTypes;


@end

