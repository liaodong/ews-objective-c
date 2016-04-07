#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfCalendarPermissionsType;
@class MPSEWSArrayOfUnknownEntriesType;



/* CalendarPermissionSetType */
@interface MPSEWSCalendarPermissionSetType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCalendarPermissionSetType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfCalendarPermissionsType* calendarPermissions;
@property (strong) MPSEWSArrayOfUnknownEntriesType*      unknownEntries;


@end

