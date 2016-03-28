#import <Foundation/Foundation.h>



@class MPSEWSFreeBusyView;
@class MPSEWSResponseMessageType;



/* FreeBusyResponseType */
@interface MPSEWSFreeBusyResponseType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSResponseMessageType* responseMessage;
@property (strong) MPSEWSFreeBusyView*        freeBusyView;


@end

