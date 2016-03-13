#import <Foundation/Foundation.h>




#import "EWSCalendarPermissionSetType.h"
#import "EWSBaseFolderType.h"



/* CalendarFolderType */
@interface EWSCalendarFolderType : EWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSCalendarPermissionSetType* permissionSet;


@end

