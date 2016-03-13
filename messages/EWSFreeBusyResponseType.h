#import <Foundation/Foundation.h>




#import "../messages/EWSResponseMessageType.h"
#import "../types/EWSFreeBusyView.h"



/* FreeBusyResponseType */
@interface EWSFreeBusyResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSResponseMessageType* responseMessage;
@property (retain) EWSFreeBusyView*        freeBusyView;


@end

