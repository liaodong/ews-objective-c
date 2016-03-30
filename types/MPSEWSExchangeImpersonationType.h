#import <Foundation/Foundation.h>



@class MPSEWSConnectingSIDType;



/* ExchangeImpersonationType */
@interface MPSEWSExchangeImpersonationType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExchangeImpersonationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConnectingSIDType* connectingSID;


@end

