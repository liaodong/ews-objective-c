#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfFreeBusyResponse;
@class MPSEWSSuggestionsResponseType;



/* GetUserAvailabilityResponseType */
@interface MPSEWSGetUserAvailabilityResponseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetUserAvailabilityResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfFreeBusyResponse* freeBusyResponseArray;
@property (strong) MPSEWSSuggestionsResponseType* suggestionsResponse;


@end

