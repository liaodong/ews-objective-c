#import <Foundation/Foundation.h>
#import "MPSEWSBaseFolderType.h"



@class MPSEWSCalendarPermissionSetType;



/* CalendarFolderType */
@interface MPSEWSCalendarFolderType : MPSEWSBaseFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSCalendarPermissionSetType* permissionSet;


@end

