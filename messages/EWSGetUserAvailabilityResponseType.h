#import <Foundation/Foundation.h>




#import "../messages/EWSArrayOfFreeBusyResponse.h"
#import "../messages/EWSSuggestionsResponseType.h"



/* GetUserAvailabilityResponseType */
@interface EWSGetUserAvailabilityResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSArray<EWSFreeBusyResponseType*>* freeBusyResponseArray  /* EWSArrayOfFreeBusyResponse */;
@property (retain) EWSSuggestionsResponseType*        suggestionsResponse;


@end

