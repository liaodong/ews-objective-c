#import <Foundation/Foundation.h>



@class EWSArrayOfFreeBusyResponse;
@class EWSSuggestionsResponseType;



/* GetUserAvailabilityResponseType */
@interface EWSGetUserAvailabilityResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfFreeBusyResponse* freeBusyResponseArray;
@property (strong) EWSSuggestionsResponseType* suggestionsResponse;


@end

