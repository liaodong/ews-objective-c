#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* DeletedOccurrenceInfoType */
@interface MPSEWSDeletedOccurrenceInfoType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeletedOccurrenceInfoType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* start  /* xs:dateTime */;


@end

