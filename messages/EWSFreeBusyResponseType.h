#import <Foundation/Foundation.h>



@class EWSFreeBusyView;
@class EWSResponseMessageType;



/* FreeBusyResponseType */
@interface EWSFreeBusyResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSResponseMessageType* responseMessage;
@property (strong) EWSFreeBusyView*        freeBusyView;


@end

