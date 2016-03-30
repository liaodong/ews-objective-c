#import <Foundation/Foundation.h>



@class MPSEWSCalendarPermissionType;



/* ArrayOfCalendarPermissionsType */
@interface MPSEWSArrayOfCalendarPermissionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfCalendarPermissionsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSCalendarPermissionType*>* calendarPermission;


- (void) addCalendarPermission:(MPSEWSCalendarPermissionType*) elem;
@end

