#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSMailTipsResponseMessageType;



/* ArrayOfMailTipsResponseMessageType */
@interface MPSEWSArrayOfMailTipsResponseMessageType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfMailTipsResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSMailTipsResponseMessageType*>* mailTipsResponseMessageType;


- (void) addMailTipsResponseMessageType:(MPSEWSMailTipsResponseMessageType*) elem;
@end

