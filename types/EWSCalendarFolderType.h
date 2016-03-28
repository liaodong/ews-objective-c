#import <Foundation/Foundation.h>
#import "EWSBaseFolderType.h"



@class EWSCalendarPermissionSetType;



/* CalendarFolderType */
@interface EWSCalendarFolderType : EWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSCalendarPermissionSetType* permissionSet;


@end

