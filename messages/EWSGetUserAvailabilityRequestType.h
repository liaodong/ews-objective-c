#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfMailboxData.h"
#import "../types/EWSFreeBusyViewOptionsType.h"
#import "../types/EWSSerializableTimeZone.h"
#import "../types/EWSSuggestionsViewOptionsType.h"
#import "EWSBaseRequestType.h"



/* GetUserAvailabilityRequestType */
@interface EWSGetUserAvailabilityRequestType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSerializableTimeZone*       timeZone;
@property (retain) NSArray<EWSMailboxData*>*      mailboxDataArray        /* EWSArrayOfMailboxData */;
@property (retain) EWSFreeBusyViewOptionsType*    freeBusyViewOptions;
@property (retain) EWSSuggestionsViewOptionsType* suggestionsViewOptions;


@end

