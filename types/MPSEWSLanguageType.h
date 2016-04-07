#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSLanguageTypeHandler.h"

@interface MPSEWSLanguageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSLanguageType*)val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;

@property NSString* simpleContent    /* xs:string */;

@end

