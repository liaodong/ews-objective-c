#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfTransitionsGroupsType;
@class MPSEWSArrayOfTransitionsType;
@class MPSEWSNonEmptyArrayOfPeriodsType;



/* TimeZoneDefinitionType */
@interface MPSEWSTimeZoneDefinitionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTimeZoneDefinitionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                           id                 /* xs:string */;
@property (strong) NSString*                           name               /* xs:string */;
@property (strong) MPSEWSNonEmptyArrayOfPeriodsType*   periods;
@property (strong) MPSEWSArrayOfTransitionsGroupsType* transitionsGroups;
@property (strong) MPSEWSArrayOfTransitionsType*       transitions;


@end

