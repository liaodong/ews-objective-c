#import <Foundation/Foundation.h>



@class MPSEWSFreeBusyView;
@class MPSEWSResponseMessageType;



/* FreeBusyResponseType */
@interface MPSEWSFreeBusyResponseType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFreeBusyResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSResponseMessageType* responseMessage;
@property (strong) MPSEWSFreeBusyView*        freeBusyView;


@end

