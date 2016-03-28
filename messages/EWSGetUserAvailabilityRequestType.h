#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSArrayOfMailboxData;
@class EWSFreeBusyViewOptionsType;
@class EWSSerializableTimeZone;
@class EWSSuggestionsViewOptionsType;



/* GetUserAvailabilityRequestType */
@interface EWSGetUserAvailabilityRequestType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSSerializableTimeZone*       timeZone;
@property (strong) EWSArrayOfMailboxData*         mailboxDataArray;
@property (strong) EWSFreeBusyViewOptionsType*    freeBusyViewOptions;
@property (strong) EWSSuggestionsViewOptionsType* suggestionsViewOptions;


@end

