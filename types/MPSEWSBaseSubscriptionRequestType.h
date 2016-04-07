#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSNonEmptyArrayOfNotificationEventTypesType;



/* BaseSubscriptionRequestType */
@interface MPSEWSBaseSubscriptionRequestType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseSubscriptionRequestType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                        subscribeToAllFolders  /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType*          folderIds;
@property (strong) MPSEWSNonEmptyArrayOfNotificationEventTypesType* eventTypes;
@property (strong) NSString*                                        watermark              /* MPSEWSWatermarkType */;


@end

