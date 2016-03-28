#import <Foundation/Foundation.h>



@class MPSEWSArrayOfCalendarPermissionsType;
@class MPSEWSArrayOfUnknownEntriesType;



/* CalendarPermissionSetType */
@interface MPSEWSCalendarPermissionSetType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfCalendarPermissionsType* calendarPermissions;
@property (strong) MPSEWSArrayOfUnknownEntriesType*      unknownEntries;


@end

