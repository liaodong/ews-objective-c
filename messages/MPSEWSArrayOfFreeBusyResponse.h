#import <Foundation/Foundation.h>



@class MPSEWSFreeBusyResponseType;



/* ArrayOfFreeBusyResponse */
@interface MPSEWSArrayOfFreeBusyResponse : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFreeBusyResponseType*>* freeBusyResponse;


- (void) addFreeBusyResponse:(MPSEWSFreeBusyResponseType*) elem;
@end

