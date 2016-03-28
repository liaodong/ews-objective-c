#import <Foundation/Foundation.h>



@class EWSCalendarPermissionType;



/* ArrayOfCalendarPermissionsType */
@interface EWSArrayOfCalendarPermissionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSCalendarPermissionType* calendarPermission;


@end

