#import <Foundation/Foundation.h>






/* RequestTypeHeader */
@interface MPSEWSRequestTypeHeader : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRequestTypeHeader*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* requestType  /* MPSEWSAvailabilityProxyRequestType */;


@end

