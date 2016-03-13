#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"
#import "EWSFolderIdType.h"
#import "EWSBaseNotificationEventType.h"



/* BaseObjectChangedEventType */
@interface EWSBaseObjectChangedEventType : EWSBaseNotificationEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*        timeStamp       /* xs:dateTime */;
@property (retain) EWSFolderIdType* parentFolderId;


@end

