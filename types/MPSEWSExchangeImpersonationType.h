#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSConnectingSIDType;



/* ExchangeImpersonationType */
@interface MPSEWSExchangeImpersonationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExchangeImpersonationType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConnectingSIDType* connectingSID;


@end

