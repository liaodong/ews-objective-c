#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSNonEmptyArrayOfNotificationEventTypesType;



/* StreamingSubscriptionRequestType */
@interface MPSEWSStreamingSubscriptionRequestType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSStreamingSubscriptionRequestType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                        subscribeToAllFolders  /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType*          folderIds;
@property (strong) MPSEWSNonEmptyArrayOfNotificationEventTypesType* eventTypes;


@end

