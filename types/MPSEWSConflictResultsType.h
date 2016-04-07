#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ConflictResultsType */
@interface MPSEWSConflictResultsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConflictResultsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* count  /* xs:int */;


@end

