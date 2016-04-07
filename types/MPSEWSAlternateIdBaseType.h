#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* AlternateIdBaseType */
@interface MPSEWSAlternateIdBaseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAlternateIdBaseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* format  /* MPSEWSIdFormatType */;


@end

