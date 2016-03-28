#import <Foundation/Foundation.h>



@class MPSEWSCalendarPermissionType;



/* ArrayOfCalendarPermissionsType */
@interface MPSEWSArrayOfCalendarPermissionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSCalendarPermissionType* calendarPermission;


@end

