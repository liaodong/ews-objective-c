#import <Foundation/Foundation.h>




#import "EWSConnectingSIDType.h"



/* ExchangeImpersonationType */
@interface EWSExchangeImpersonationType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSConnectingSIDType* connectingSID;


@end

