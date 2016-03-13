#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfCalendarPermissionsType.h"
#import "../types/EWSArrayOfUnknownEntriesType.h"



/* CalendarPermissionSetType */
@interface EWSCalendarPermissionSetType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSArrayOfCalendarPermissionsType* calendarPermissions;
@property (retain) EWSArrayOfUnknownEntriesType*      unknownEntries;


@end

