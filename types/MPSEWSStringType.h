#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSStringTypeHandler.h"

@interface MPSEWSStringType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSStringType*)val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;

@property NSString* simpleContent    /* xs:string */;

@end

