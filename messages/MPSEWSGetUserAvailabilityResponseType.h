#import <Foundation/Foundation.h>



@class MPSEWSArrayOfFreeBusyResponse;
@class MPSEWSSuggestionsResponseType;



/* GetUserAvailabilityResponseType */
@interface MPSEWSGetUserAvailabilityResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfFreeBusyResponse* freeBusyResponseArray;
@property (strong) MPSEWSSuggestionsResponseType* suggestionsResponse;


@end

