#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfMailboxData;
@class MPSEWSFreeBusyViewOptionsType;
@class MPSEWSSerializableTimeZone;
@class MPSEWSSuggestionsViewOptionsType;



/* GetUserAvailabilityRequestType */
@interface MPSEWSGetUserAvailabilityRequestType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetUserAvailabilityRequestType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSerializableTimeZone*       timeZone;
@property (strong) MPSEWSArrayOfMailboxData*         mailboxDataArray;
@property (strong) MPSEWSFreeBusyViewOptionsType*    freeBusyViewOptions;
@property (strong) MPSEWSSuggestionsViewOptionsType* suggestionsViewOptions;


@end

