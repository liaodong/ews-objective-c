#import <Foundation/Foundation.h>



@class EWSFreeBusyResponseType;



/* ArrayOfFreeBusyResponse */
@interface EWSArrayOfFreeBusyResponse : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSFreeBusyResponseType*>* freeBusyResponse;


- (void) addFreeBusyResponse:(EWSFreeBusyResponseType*) elem;
@end

