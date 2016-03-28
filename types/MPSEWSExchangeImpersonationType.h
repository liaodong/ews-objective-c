#import <Foundation/Foundation.h>



@class MPSEWSConnectingSIDType;



/* ExchangeImpersonationType */
@interface MPSEWSExchangeImpersonationType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSConnectingSIDType* connectingSID;


@end

