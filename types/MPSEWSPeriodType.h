#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* PeriodType */
@interface MPSEWSPeriodType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSPeriodType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* bias   /* xs:duration */;
@property (strong) NSString* name   /* xs:string */;
@property (strong) NSString* id     /* xs:string */;


@end

