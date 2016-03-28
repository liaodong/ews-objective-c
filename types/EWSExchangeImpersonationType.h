#import <Foundation/Foundation.h>



@class EWSConnectingSIDType;



/* ExchangeImpersonationType */
@interface EWSExchangeImpersonationType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSConnectingSIDType* connectingSID;


@end

