#import <Foundation/Foundation.h>



@class EWSArrayOfCalendarPermissionsType;
@class EWSArrayOfUnknownEntriesType;



/* CalendarPermissionSetType */
@interface EWSCalendarPermissionSetType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfCalendarPermissionsType* calendarPermissions;
@property (strong) EWSArrayOfUnknownEntriesType*      unknownEntries;


@end

