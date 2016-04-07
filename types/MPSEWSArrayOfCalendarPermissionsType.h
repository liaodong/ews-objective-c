#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSCalendarPermissionType;



/* ArrayOfCalendarPermissionsType */
@interface MPSEWSArrayOfCalendarPermissionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfCalendarPermissionsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSCalendarPermissionType*>* calendarPermission;


- (void) addCalendarPermission:(MPSEWSCalendarPermissionType*) elem;
@end

