#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSFreeBusyResponseType;



/* ArrayOfFreeBusyResponse */
@interface MPSEWSArrayOfFreeBusyResponse : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfFreeBusyResponse*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFreeBusyResponseType*>* freeBusyResponse;


- (void) addFreeBusyResponse:(MPSEWSFreeBusyResponseType*) elem;
@end

