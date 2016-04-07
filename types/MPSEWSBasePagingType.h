#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BasePagingType */
@interface MPSEWSBasePagingType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBasePagingType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* maxEntriesReturned  /* xs:int */;


@end

