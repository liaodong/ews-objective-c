#import <Foundation/Foundation.h>
#import "EWSBaseNotificationEventType.h"



@class EWSFolderIdType;



/* BaseObjectChangedEventType */
@interface EWSBaseObjectChangedEventType : EWSBaseNotificationEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*        timeStamp       /* xs:dateTime */;
@property (strong) EWSFolderIdType* parentFolderId;


@end

